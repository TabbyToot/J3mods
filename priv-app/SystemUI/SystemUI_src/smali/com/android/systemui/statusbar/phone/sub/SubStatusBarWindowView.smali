.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "SubStatusBarWindowView.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SubStatusBarWindowView"


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mFixBtn:Landroid/widget/TextView;

.field mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mReminderBtn:Landroid/widget/TextView;

.field private mScreenOffBtn:Landroid/widget/TextView;

.field mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field public mSubPanelExpanded:Landroid/view/View;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 156
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 198
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 155
    .end local v0    # "down":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    .restart local v0    # "down":Z
    :sswitch_0
    if-nez v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->onBackPressed()Z

    goto :goto_1

    .line 170
    :sswitch_1
    if-nez v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->onMenuPressed()Z

    move-result v1

    goto :goto_1

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 122
    const v1, 0x7f0f0346

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubPanelExpanded:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 134
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 340
    const v0, 0x7f0f034d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mReminderBtn:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f0f0348

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f0f034c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v0, 0x7f0f034a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    .line 382
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    const-string v1, "UNFIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    const-string v1, "FIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 265
    .local v0, "handled":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 277
    return v0
.end method

.method public setFloatingBackKey(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p1, "floatingKey"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .line 88
    return-void
.end method

.method public setSubStatusBarWindowManager(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V
    .locals 0
    .param p1, "subStatusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .line 83
    return-void
.end method
