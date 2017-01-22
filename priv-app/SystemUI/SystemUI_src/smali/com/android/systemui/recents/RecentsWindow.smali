.class public Lcom/android/systemui/recents/RecentsWindow;
.super Landroid/app/Dialog;
.source "RecentsWindow.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;,
        Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Recents_Window"

.field private static mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;


# instance fields
.field private dismissAnimationTriggered:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private final mContext:Landroid/content/Context;

.field mEmptyTextView:Landroid/widget/TextView;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field private mFlipFont:I

.field mHandler:Landroid/os/Handler;

.field mHomeIntent:Landroid/content/Intent;

.field private mLastConfig:Landroid/content/res/Configuration;

.field mLastTabKeyEventTime:J

.field mRecentsCloseAllButton:Landroid/widget/Button;

.field mRecentsLayoutView:Landroid/view/View;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private misShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsWindow;->misShowing:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsWindow;->dismissAnimationTriggered:Z

    .line 267
    new-instance v0, Lcom/android/systemui/recents/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsWindow$1;-><init>(Lcom/android/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/android/systemui/recents/RecentsWindow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsWindow$2;-><init>(Lcom/android/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mLastConfig:Landroid/content/res/Configuration;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020515

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->requestWindowFeature(I)Z

    .line 79
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/recents/RecentsWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsWindow;->dismissAnimationTriggered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsWindow;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/RecentsWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsWindow;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/recents/RecentsWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsWindow;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I

    return p1
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e04cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    .local v2, "WindowHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x82f

    const v4, 0x1000100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 93
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 94
    const-string v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    return-object v0
.end method

.method private inflateView()V
    .locals 7

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->setContentView(I)V

    .line 101
    const v0, 0x7f0f0260

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsLayoutView:Landroid/view/View;

    .line 102
    const v0, 0x7f0f022d

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 108
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsWindow;Lcom/android/systemui/recents/RecentsWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setCloseAllButton(Landroid/view/View;)V

    .line 112
    const v0, 0x7f0f022e

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0f024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyTextView:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x3e6b851f    # 0.23f

    invoke-virtual {v0, v3, v4, v1}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x40000000    # 2.0f

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsWindow;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 122
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 379
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow;->mLastConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyTextView:Landroid/widget/TextView;

    const v2, 0x7f0a02f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    const v2, 0x7f0a03a8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 387
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mLastConfig:Landroid/content/res/Configuration;

    .line 388
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsWindow;->dismissAnimationTriggered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v1, :cond_2

    .line 247
    :cond_0
    const-string v1, "Recents_Window"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "Recents_Window"

    const-string v2, "run exit animation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;-><init>(Lcom/android/systemui/recents/RecentsWindow;Landroid/app/Dialog;)V

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 254
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsWindow;->dismissAnimationTriggered:Z

    .line 255
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 221
    const-string v0, "Recents_Window"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsWindow;->misShowing:Z

    .line 263
    const-string v0, "Recents_Window"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misShowing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsWindow;->misShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsWindow;->misShowing:Z

    return v0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "Recents_Window"

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 498
    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "Recents_Window"

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 485
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsWindow;->inflateView()V

    .line 128
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "Recents_Window"

    const-string v1, "onExitToHomeAnimationTriggered is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 408
    sparse-switch p1, :sswitch_data_0

    .line 447
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    .line 410
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/recents/RecentsWindow;->mLastTabKeyEventTime:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    move v3, v4

    .line 411
    .local v3, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz v3, :cond_1

    .line 413
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 414
    .local v0, "backward":Z
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v3    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v3, v5

    .line 410
    goto :goto_1

    .line 424
    :sswitch_1
    const/16 v2, 0x15

    .line 425
    .local v2, "forwardKey":I
    const/16 v1, 0x16

    .line 426
    .local v1, "backwardKey":I
    if-ne p1, v2, :cond_5

    .line 427
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 431
    :cond_5
    if-ne p1, v1, :cond_0

    .line 432
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 433
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 441
    .end local v1    # "backwardKey":I
    .end local v2    # "forwardKey":I
    :sswitch_2
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_0
        0x43 -> :sswitch_2
        0x70 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onScreenPinningRequest()V
    .locals 2

    .prologue
    .line 507
    const-string v0, "Recents_Window"

    const-string v1, "onScreenPinningRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v0, Lcom/android/systemui/recents/RecentsWindow;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->showPrompt()V

    .line 509
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 132
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 133
    const-string v5, "Recents_Window"

    const-string v6, "onStart"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 136
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 138
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 139
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v7, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 140
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v7, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 142
    new-instance v5, Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/systemui/recents/RecentsWindow;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    .line 144
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v4, "systemfilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v2, "servicefilter":Landroid/content/IntentFilter;
    const-string v5, "action_hide_recents_activity"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 157
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 158
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.NAVIBAR_SETTING_VISIBILITY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.NAVIBAR_SETTING_VISIBLE"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->updateRecentsTasks()V

    .line 165
    return-void
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 170
    const-string v4, "Recents_Window"

    const-string v5, "onStop"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsWindow;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f050067

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 177
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/RecentsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 180
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 182
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 184
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.action.NAVIBAR_SETTING_VISIBILITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.extra.NAVIBAR_SETTING_VISIBLE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v6, v4, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 191
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v6, v4, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 193
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v7, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 194
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v6, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    .line 197
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 198
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "Recents_Window"

    const-string v1, "onTaskLaunchFailed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 491
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 471
    const-string v0, "Recents_Window"

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/RecentsWindow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsWindow$3;-><init>(Lcom/android/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChange"    # Z

    .prologue
    .line 517
    const-string v0, "Recents_Window"

    const-string v1, "requestFocusNextTask is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 2

    .prologue
    .line 513
    const-string v0, "Recents_Window"

    const-string v1, "onTaskViewMoved is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 203
    const-string v3, "Recents_Window"

    const-string v4, "show"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    if-eqz v3, :cond_0

    .line 205
    sget-object v3, Lcom/android/systemui/recents/RecentsWindow;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v3}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 210
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 211
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 212
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "closeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 216
    return-void
.end method

.method updateRecentsTasks()V
    .locals 17

    .prologue
    .line 307
    const-string v14, "Recents_Window"

    const-string v15, "updateRecentsTasks is getting called"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 310
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    .line 312
    .local v6, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v7, 0x0

    .line 313
    .local v7, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    .line 315
    if-nez v7, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    .line 320
    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v14

    if-nez v14, :cond_1

    .line 321
    const/4 v14, 0x1

    invoke-virtual {v6, v7, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 324
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 325
    .local v5, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v14, v7, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 330
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v8

    .line 332
    .local v8, "root":Lcom/android/systemui/recents/model/SpaceNode;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mStacks:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mStacks:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v2

    .line 336
    .local v2, "hasTasks":Z
    const-string v14, "Recents_Window"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateRecentsTasks hasTasks : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v2, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/RecentsWindow;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v2, :cond_4

    const/4 v14, 0x1

    :goto_0
    iput-boolean v14, v15, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 345
    .local v12, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 346
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v12, :cond_6

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    .line 348
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 349
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 350
    .local v11, "taskCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v11, :cond_3

    .line 351
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    .line 352
    .local v10, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v14, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v15, v15, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v14, v15, :cond_5

    .line 353
    const/4 v14, 0x1

    iput-boolean v14, v10, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 346
    .end local v10    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v11    # "taskCount":I
    .end local v12    # "taskStackCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 350
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v10    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v11    # "taskCount":I
    .restart local v12    # "taskStackCount":I
    .restart local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 361
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "taskCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v14, :cond_8

    .line 362
    const-string v14, "Recents_Window"

    const-string v15, "launchedWithNoRecentTasks"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsLayoutView:Landroid/view/View;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_7
    :goto_3
    return-void

    .line 366
    :cond_8
    const-string v14, "Recents_Window"

    const-string v15, "launchedWithRecentTasks"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-eqz v14, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const v15, 0x7f050072

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 370
    .local v1, "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsLayoutView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v14, v1}, Lcom/android/systemui/recents/views/RecentsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
