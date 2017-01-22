.class public Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static SHORTCUT_LAUNCH_ON_RELEASE:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

.field private mDistance:D

.field private mFirstBorder:I

.field private mFirstBorderShortcut:I

.field private mIsIgnoreTouch:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field mTempRect:Landroid/graphics/Rect;

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->shortcutLaunchOnRelease()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .param p2, "unlockView"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    .line 33
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 34
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 35
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 36
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 68
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 69
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    .line 71
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    .line 73
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorderShortcut:I

    .line 74
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private isUSAShortcutView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launch()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "KeyguardUnlockEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 289
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    .line 290
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    const-string v17, "KeyguardUnlockEventHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mIsUnlockStarted - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 80
    .local v4, "action":I
    and-int/lit16 v11, v4, 0xff

    .line 81
    .local v11, "maskedAction":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 82
    const/16 v17, 0x1

    .line 259
    :goto_0
    return v17

    .line 86
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->isUSAShortcutView(Landroid/view/View;)Z

    move-result v10

    .line 88
    .local v10, "isUSAShortcutView":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 89
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_1

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    .line 90
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 91
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 101
    .local v15, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    .line 103
    .local v16, "touchedEventY":F
    packed-switch v11, :pswitch_data_0

    .line 259
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    if-eqz v10, :cond_18

    :cond_7
    const/16 v17, 0x0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 106
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 107
    const-string v17, "KeyguardUnlockEventHandler"

    const-string v18, "mIsMultiTouch true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_6

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 110
    .local v12, "me":Landroid/view/MotionEvent;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 114
    const-string v17, "KeyguardUnlockEventHandler"

    const-string v18, "mIsMultiTouch false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    .end local v12    # "me":Landroid/view/MotionEvent;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 118
    const-string v17, "KeyguardUnlockEventHandler"

    const-string v18, "mIsMultiTouch false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    :pswitch_2
    if-nez p1, :cond_9

    .line 123
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    .line 124
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    .line 132
    :goto_2
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    .line 126
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    goto :goto_2

    .line 140
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 144
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 145
    .local v5, "diffX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 147
    .local v8, "diffY":I
    int-to-double v0, v5

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 150
    if-eqz p1, :cond_b

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v20, v0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_e

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    .line 162
    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    sget-boolean v17, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-nez v17, :cond_6

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v17, v18, v20

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 164
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 166
    const-wide/16 v6, 0x0

    .line 167
    .local v6, "delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 170
    if-nez p1, :cond_d

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v6

    .line 175
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/View;

    new-instance v18, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 156
    .end local v6    # "delay":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto/16 :goto_3

    .line 191
    .end local v5    # "diffX":I
    .end local v8    # "diffY":I
    :pswitch_4
    const v17, 0xff00

    and-int v17, v17, v4

    shr-int/lit8 v14, v17, 0x8

    .line 192
    .local v14, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 193
    .local v13, "pointer_id":I
    if-nez v13, :cond_f

    .line 194
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 198
    .end local v13    # "pointer_id":I
    .end local v14    # "pointer_index":I
    :cond_f
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_10

    .line 199
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 200
    const-string v17, "KeyguardUnlockEventHandler"

    const-string v18, "mIsMultiTouch false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v11, v0, :cond_11

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 206
    :cond_11
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 207
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_1

    .line 210
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 214
    :cond_12
    const-string v17, "KeyguardUnlockEventHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_UP mDistance: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    .line 217
    .local v9, "firstBorder":I
    if-eqz p1, :cond_13

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 218
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorderShortcut:I

    .line 220
    :cond_13
    int-to-double v0, v9

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v20, v0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v17, v18, v20

    if-ltz v17, :cond_14

    sget-boolean v17, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-eqz v17, :cond_17

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    move/from16 v17, v0

    if-nez v17, :cond_17

    .line 223
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 224
    const-wide/16 v6, 0x0

    .line 226
    .restart local v6    # "delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 230
    if-nez p1, :cond_15

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v6

    .line 235
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/View;

    new-instance v18, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    .end local v6    # "delay":J
    :cond_16
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 251
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 252
    const-string v17, "KeyguardUnlockEventHandler"

    const-string v18, "mIsMultiTouch false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    :cond_17
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto :goto_4

    .line 259
    .end local v9    # "firstBorder":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 281
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 283
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 284
    return-void
.end method
