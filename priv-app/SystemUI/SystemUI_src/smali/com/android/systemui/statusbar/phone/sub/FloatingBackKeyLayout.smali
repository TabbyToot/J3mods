.class public Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingBackKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;
    }
.end annotation


# static fields
.field public static final POSITION_LEFT_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_TOP:I = 0x0

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_RIGHT_TOP:I = 0x2

.field public static final STATE_DISAPPEAR:I = 0x4

.field public static final STATE_EXPAND:I = 0x3

.field public static final STATE_HIDE:I = 0x0

.field public static final STATE_MOVE:I = 0x2

.field public static final STATE_OPEN:I = 0x1


# instance fields
.field private isDimmed:Z

.field private mButtonSize:I

.field private mCurOrientation:I

.field private mDimmedTimeOut:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mExpandX:I

.field private mExpandY:I

.field private mFlagToCutGhostTouch:Z

.field private mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

.field private mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

.field private mFloatingKeyVisibility:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitX:I

.field private mInitY:I

.field private mIsMoveStarted:Z

.field private mLastConfigOrientation:I

.field mLastX:I

.field mLastY:I

.field private mNeedToRotationChange:Z

.field private mOldOrientation:I

.field private mOldXForRoatation:I

.field private mOldYForRoatation:I

.field mOrientationListener:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;

.field private mPosition:I

.field private mSavedOrientation:I

.field private mState:I

.field private mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 56
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    .line 241
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    .line 314
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    .line 513
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 526
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    .line 555
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 556
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 595
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    .line 596
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    .line 597
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    .line 640
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->expand()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->beginMoving(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addMovedWindow()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->dimmedAnim()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->die()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    return v0
.end method

.method private addExpandedWindow()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 375
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(IIIZ)V

    .line 377
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 385
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 386
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 387
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 388
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 389
    const-string v1, "Floating Back Expanded"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_0
    return-void
.end method

.method private addMovedWindow()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 397
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 405
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 406
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 407
    const-string v1, "Floating Back Expanded"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_0
    return-void
.end method

.method private appearAnim()V
    .locals 4

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 573
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 574
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 577
    return-void
.end method

.method private beginMoving(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMoveStart(Z)V

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    .line 429
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    if-nez v1, :cond_0

    .line 430
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 431
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 432
    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 452
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(IIIZ)V

    .line 456
    return-void
.end method

.method private changeRotation(IZ)V
    .locals 4
    .param p1, "rotation"    # I
    .param p2, "isDisappeared"    # Z

    .prologue
    const/4 v3, -0x1

    .line 643
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRotation  mNeedToRotationChange =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    if-eq v0, v3, :cond_1

    .line 656
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    .line 750
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 660
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 662
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 663
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 664
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 669
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 670
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 672
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 673
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 678
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 680
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 682
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 683
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    if-eqz v0, :cond_0

    .line 704
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_1

    .line 735
    :goto_1
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 736
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updatePosition()V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$8;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 748
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    goto/16 :goto_0

    .line 708
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_1

    .line 717
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto/16 :goto_1

    .line 726
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto/16 :goto_1

    .line 656
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 704
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .prologue
    const v7, 0x7f0e04b0

    const/4 v6, -0x1

    const/4 v1, -0x2

    .line 351
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 359
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 360
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 361
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 363
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 364
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 367
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    .line 368
    const-string v1, "Floating Back Key"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 371
    return-object v0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 364
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_1
.end method

.method private die()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->die()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 569
    return-void
.end method

.method private dimmedAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    if-ne v1, v4, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 519
    .local v0, "animatorX":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 520
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 522
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 524
    .end local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 517
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private expand()V
    .locals 2

    .prologue
    .line 415
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addExpandedWindow()V

    .line 422
    return-void
.end method

.method private hide()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hideAnim()V

    .line 473
    return-void
.end method

.method private hideAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 494
    const/4 v0, -0x1

    .line 495
    .local v0, "dest":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 498
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 502
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    .line 510
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 511
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 506
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, v1, v0, v4, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    .line 507
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 504
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method private isLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 476
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToPositionAnim(IIZZ)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "port"    # Z
    .param p4, "reverse"    # Z

    .prologue
    .line 191
    if-eqz p3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 198
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 201
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method private open()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 459
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->appearAnim()V

    .line 466
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 464
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    goto :goto_0
.end method

.method private openAnim()V
    .locals 4

    .prologue
    const v3, 0x7f0e04b0

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 491
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    .line 592
    :goto_1
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateWindowParams()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseAndRemoveExpandedWindow()V
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method public disappear()V
    .locals 4

    .prologue
    .line 534
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 535
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 536
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 552
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 553
    return-void
.end method

.method public hideAndRemoveExpandedWindow()V
    .locals 4

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hide()V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOrientationListener:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOrientationListener:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOrientationListener:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->enable()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updatePosition()V

    .line 229
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->die()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 317
    const-string v3, "SubPhoneStatusBar"

    const-string v4, "onConfigurationChanged  FLOATINGBACKKEYLAYOUT "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    .line 326
    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 327
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    .line 328
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    .line 330
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 331
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 333
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V

    .line 334
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    .line 336
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    .line 337
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    .line 347
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_1
    return-void

    .line 333
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    .line 252
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 283
    const v3, 0x7f0f00b7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040018

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setFloatingBackKeyLayout(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 290
    .local v2, "drawableBack":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerImpl;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 299
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 300
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 301
    .local v0, "display":Landroid/view/Display;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v3, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 303
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    .line 304
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    .line 308
    return-void
.end method

.method public setFloatingKeyVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    .line 244
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMenuVisible(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method public setSubBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 312
    return-void
.end method
