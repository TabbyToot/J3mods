.class public Lcom/android/systemui/qs/QSEditPanel;
.super Landroid/widget/FrameLayout;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObject;,
        Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QSEditPanel"

.field private static final TAG_ACTIVE:I = 0x0

.field private static final TAG_AVAILABLE:I = 0x1

.field private static mDiagnosticLogs:Z


# instance fields
.field private final FIRST_AVAILABLE_BUTTON_ID:I

.field private final MAX_ACTIVE_BUTTONS_TABLET:I

.field private final MAX_ACTIVE_BUTTONS_ZERO:I

.field private final MSG_HANDLE_ACTION_DROP:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

.field private final MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

.field private final MSG_HANDLE_POST_REFRESH_VIEW:I

.field private final MSG_HANDLE_UPDATE_VIEW_STATE:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field protected SCROLLVIEW_ANIMATION_DURATION:I

.field private mActiveAppsMaxNum:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveButtonContainer:Landroid/widget/FrameLayout;

.field private mActiveContainerParent:Landroid/widget/LinearLayout;

.field private mActiveTileCount:I

.field private mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

.field private mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

.field private mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mAvailableButtonContainer:Landroid/widget/FrameLayout;

.field private mAvailableContainerParent:Landroid/widget/LinearLayout;

.field private mAvailableTileCount:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCrossIconWidth:I

.field private mCurrentOrientation:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragStart:Z

.field private mEditSummary:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalGap:I

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIconMarginTop:I

.field private mIconWidth:I

.field private mIdxGap:I

.field private mIsActiveAdded:Z

.field private mIsDroppedOnView:Z

.field private mLocale:Ljava/util/Locale;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedBg:Landroid/view/View;

.field private mLongClickedIdx:I

.field private mLongClickedView:Landroid/widget/FrameLayout;

.field private mMaxActiveToAvailableEnabled:Z

.field private mNumColumns:I

.field private mPrvLongClickedBg:Landroid/view/View;

.field private mQconnectCheckBox:Landroid/widget/CompoundButton;

.field private mQconnectGroup:Landroid/widget/LinearLayout;

.field private mRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSfinderCheckBox:Landroid/widget/CompoundButton;

.field private mSfinderGroup:Landroid/widget/LinearLayout;

.field private mStartLongClickedIdx:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mToast:Landroid/widget/Toast;

.field private mTouchedIdx:I

.field private mVerticalGap:I

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xe

    const/4 v6, -0x2

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 89
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 91
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 93
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    .line 103
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    .line 109
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 117
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 119
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 121
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 123
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_UPDATE_VIEW_STATE:I

    .line 125
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

    .line 127
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

    .line 129
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

    .line 131
    const/16 v1, 0x68

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

    .line 133
    const/16 v1, 0x69

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

    .line 135
    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

    .line 137
    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

    .line 139
    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

    .line 141
    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

    .line 143
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ACTION_DROP:I

    .line 145
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_REFRESH_VIEW:I

    .line 147
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

    .line 150
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_ZERO:I

    .line 152
    iput v7, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_TABLET:I

    .line 154
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->FIRST_AVAILABLE_BUTTON_ID:I

    .line 169
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    .line 172
    const/16 v1, 0x118

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 255
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$1;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    .line 1082
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$6;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1140
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1142
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1160
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    .line 1162
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$7;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 1327
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    .line 1899
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1931
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$8;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$8;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 311
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 314
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 316
    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 317
    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 318
    const v1, 0x7f0e0438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 319
    const v1, 0x7f0e0439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 320
    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    .line 321
    const v1, 0x7f0e043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    .line 322
    const v1, 0x7f0e02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    .line 323
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 328
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 329
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 331
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    .line 333
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->prepareViewsToAnimate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/qs/QSEditPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/QSEditPanel;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showToastPopup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateViews()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateEmptyPanelViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleActionDropView()V

    return-void
.end method

.method private addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 20
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 899
    .local p3, "overlayedLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "QSEditPanel"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addBackgroundButtonViews() mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mNumColumns="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalPanelLines="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 902
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 903
    .local v2, "columnNumber":I
    const/4 v15, 0x0

    .line 904
    .local v15, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    mul-int v16, v17, p2

    .line 905
    .local v16, "totalPanelNum":I
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 906
    .local v5, "gap":I
    :goto_0
    const/4 v6, 0x0

    .line 907
    .local v6, "idx":I
    const v13, 0x7f04006e

    .line 908
    .local v13, "panelFakeViewLayouId":I
    const v14, 0x7f040077

    .line 909
    .local v14, "panelOverlayedViewLayouId":I
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    .line 910
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 911
    .local v4, "fakePanel":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 912
    .local v12, "overLayedView":Landroid/widget/FrameLayout;
    const v17, 0x7f0f022a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 913
    .local v8, "longClickedRoundBg":Landroid/widget/ImageView;
    const v17, 0x7f0f022b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 915
    .local v3, "crossIcon":Landroid/view/View;
    add-int v17, v6, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 918
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 919
    .local v10, "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 925
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 938
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 941
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 942
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 943
    invoke-virtual {v12, v8, v9}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 947
    .local v11, "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    add-int/lit8 v18, p2, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    .line 955
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0441

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 957
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 958
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0442

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 961
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 967
    add-int/lit8 v2, v2, 0x1

    .line 909
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 905
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v5    # "gap":I
    .end local v6    # "idx":I
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .end local v13    # "panelFakeViewLayouId":I
    .end local v14    # "panelOverlayedViewLayouId":I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 928
    .restart local v3    # "crossIcon":Landroid/view/View;
    .restart local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .restart local v5    # "gap":I
    .restart local v6    # "idx":I
    .restart local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .restart local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .restart local v13    # "panelFakeViewLayouId":I
    .restart local v14    # "panelOverlayedViewLayouId":I
    :cond_4
    add-int/lit8 v17, v15, 0x1

    rem-int v17, v17, p2

    if-eqz v17, :cond_5

    if-nez p1, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 929
    :cond_5
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 932
    :cond_6
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    .line 933
    add-int/lit8 v15, v15, 0x1

    .line 934
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 952
    .restart local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto/16 :goto_3

    .line 970
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    :cond_8
    return-void
.end method

.method private addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 28
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 800
    .local p3, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, "QSEditPanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addForegroundButtonViews() mode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mNumColumns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", totalPanelLines="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 803
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 804
    .local v5, "columnNumber":I
    const/16 v20, 0x0

    .line 805
    .local v20, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    mul-int v23, v24, p2

    .line 806
    .local v23, "totalPanelNum":I
    if-nez p1, :cond_0

    const/4 v8, 0x0

    .line 807
    .local v8, "gap":I
    :goto_0
    const/4 v9, 0x0

    .line 809
    .local v9, "idx":I
    const v17, 0x7f040076

    .line 810
    .local v17, "panelViewLayouId":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v9, v0, :cond_7

    .line 811
    const/16 v24, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 812
    .local v15, "panelView":Landroid/widget/FrameLayout;
    const v24, 0x7f0f0226

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 813
    .local v16, "panelViewFocus":Landroid/widget/FrameLayout;
    const v24, 0x7f0f0227

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 814
    .local v12, "panel":Landroid/widget/LinearLayout;
    const v24, 0x7f0f0228

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 815
    .local v13, "panelImageView":Landroid/widget/ImageView;
    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    if-eqz v24, :cond_1

    const v24, 0x7f0205ec

    :goto_2
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 818
    const v24, 0x7f0f0229

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 820
    .local v14, "panelTextView":Landroid/widget/TextView;
    add-int v24, v9, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 823
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 867
    :goto_3
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 868
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    rem-int v24, v5, v24

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    div-int v24, v5, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 874
    move-object/from16 v0, p5

    invoke-virtual {v0, v15, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v5, v5, 0x1

    .line 810
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 806
    .end local v8    # "gap":I
    .end local v9    # "idx":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v17    # "panelViewLayouId":I
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 815
    .restart local v8    # "gap":I
    .restart local v9    # "idx":I
    .restart local v12    # "panel":Landroid/widget/LinearLayout;
    .restart local v13    # "panelImageView":Landroid/widget/ImageView;
    .restart local v15    # "panelView":Landroid/widget/FrameLayout;
    .restart local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .restart local v17    # "panelViewLayouId":I
    :cond_1
    const v24, 0x7f0205e9

    goto/16 :goto_2

    .line 826
    .restart local v14    # "panelTextView":Landroid/widget/TextView;
    :cond_2
    const/16 v21, 0x0

    .line 828
    .local v21, "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_3

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 831
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_4

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 834
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_4
    if-eqz v21, :cond_5

    .line 835
    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 836
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 837
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 840
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    move-object/from16 v18, v21

    .line 843
    .local v18, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v24, Lcom/android/systemui/qs/QSEditPanel$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSEditPanel$5;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    .end local v18    # "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSEditPanel;->getTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 853
    .local v22, "tileBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    div-int/lit8 v6, v24, 0x2

    .line 855
    .local v6, "cx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v7, v24, v25

    .line 856
    .local v7, "cy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 857
    .local v19, "rad":I
    sub-int v24, v6, v19

    sub-int v25, v7, v19

    add-int v26, v6, v19

    add-int v27, v7, v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 858
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 861
    .end local v6    # "cx":I
    .end local v7    # "cy":I
    .end local v19    # "rad":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/qs/QSEditPanel;->setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_3

    .line 879
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    .end local v22    # "tileBackground":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 570
    .local v1, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 571
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 572
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 575
    new-instance v0, Lcom/android/systemui/qs/QSEditPanel$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSEditPanel$4;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 620
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 621
    iget-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSTile;->setEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 622
    return-void
.end method

.method private addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .prologue
    .line 625
    iget-object v1, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "tileName":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_2

    .line 627
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 628
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 634
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-eqz v1, :cond_1

    .line 635
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 636
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 640
    :cond_1
    return-void

    .line 631
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_0

    .line 632
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    goto :goto_0
.end method

.method private animateEmptyPanelViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x6b

    const/16 v9, 0x6a

    const/16 v8, 0x69

    .line 1465
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1466
    .local v1, "longClickedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v7, :cond_1

    .line 1467
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v7

    .line 1468
    const/4 v0, 0x1

    .line 1473
    .local v0, "fromArea":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1474
    .local v6, "touchedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v6, v7, :cond_2

    .line 1475
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v6, v7

    .line 1476
    const/4 v5, 0x1

    .line 1481
    .local v5, "toArea":I
    :goto_1
    if-ne v6, v1, :cond_3

    if-ne v5, v0, :cond_3

    .line 1517
    :cond_0
    :goto_2
    return-void

    .line 1470
    .end local v0    # "fromArea":I
    .end local v5    # "toArea":I
    .end local v6    # "touchedIdx":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1478
    .restart local v6    # "touchedIdx":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "toArea":I
    goto :goto_1

    .line 1484
    :cond_3
    if-nez v5, :cond_8

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1485
    .local v4, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ne v5, v0, :cond_4

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1489
    :cond_4
    if-ne v5, v0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    .line 1493
    :cond_5
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1494
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1495
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1496
    iput v6, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1497
    const/4 v2, 0x0

    .line 1498
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v5, :cond_9

    .line 1499
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1500
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1516
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1484
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    .line 1504
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-nez v0, :cond_b

    if-ne v5, v11, :cond_b

    .line 1505
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1506
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1508
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4

    .line 1509
    :cond_b
    if-ne v0, v11, :cond_7

    if-nez v5, :cond_7

    .line 1510
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1511
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4
.end method

.method private animateScrollViews(II)V
    .locals 7
    .param p1, "currentPositionY"    # I
    .param p2, "destinationY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1452
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1453
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    const-string v3, "scrollY"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1454
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1455
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1456
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1457
    return-void
.end method

.method private animateViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x68

    const/16 v11, 0x67

    const/16 v10, 0x66

    const/16 v9, 0x65

    .line 1524
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1525
    .local v1, "longClickedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v8, :cond_0

    .line 1526
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v8

    .line 1527
    const/4 v0, 0x1

    .line 1532
    .local v0, "fromArea":I
    :goto_0
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1533
    .local v7, "touchedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v7, v8, :cond_1

    .line 1534
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v7, v8

    .line 1535
    const/4 v6, 0x1

    .line 1539
    .local v6, "toArea":I
    :goto_1
    if-ne v7, v1, :cond_2

    if-ne v6, v0, :cond_2

    .line 1577
    :goto_2
    return-void

    .line 1529
    .end local v0    # "fromArea":I
    .end local v6    # "toArea":I
    .end local v7    # "touchedIdx":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1537
    .restart local v7    # "touchedIdx":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1542
    :cond_2
    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1543
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-nez v6, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1544
    .local v4, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_4
    invoke-direct {p0, v7, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1545
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1546
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1547
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1548
    iput v7, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1549
    const/4 v2, 0x0

    .line 1551
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v6, :cond_9

    .line 1552
    if-ge v7, v1, :cond_7

    .line 1553
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1554
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1556
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1576
    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1542
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    .line 1543
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_4

    .line 1558
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1559
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1561
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1564
    :cond_9
    if-nez v0, :cond_b

    if-ne v6, v13, :cond_b

    .line 1565
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1566
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1569
    :cond_b
    if-ne v0, v13, :cond_4

    if-nez v6, :cond_4

    .line 1570
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1571
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1573
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1138
    return-void
.end method

.method private getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1065
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private handleActionDropView()V
    .locals 2

    .prologue
    .line 1242
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView() invisible, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->saveButtonLists()V

    .line 1250
    sget-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v0, :cond_1

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->sendDiagnosticLogs()V

    .line 1253
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    goto :goto_0
.end method

.method private handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1670
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1671
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1672
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1674
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateActiveToAvailable() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1677
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1678
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1679
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1681
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1682
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1679
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1684
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1685
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1686
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1687
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1684
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1689
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1690
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1691
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1692
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1694
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1696
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v10, v9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1697
    return-void
.end method

.method private handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1703
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1704
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1705
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1707
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateAvailableToActive() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1710
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1711
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1712
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1713
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1714
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1715
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1712
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1717
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1718
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1719
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1720
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1717
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1722
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1723
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1724
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1725
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1727
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1729
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1730
    return-void
.end method

.method private handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1611
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1612
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1613
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1615
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyActiveToAvailable() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1618
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1619
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1620
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1621
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1623
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1624
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1625
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1626
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1628
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1629
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1632
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1633
    return-void
.end method

.method private handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1583
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1584
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1585
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1587
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyAvailableToActive() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1590
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1591
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1592
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1593
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1590
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1595
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1596
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1597
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1598
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1600
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1601
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1604
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1605
    return-void
.end method

.method private handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 18
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1639
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1640
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1641
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1643
    .local v11, "touchedIndex":I
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateEmptySameArea() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1646
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1647
    .local v10, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1648
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1649
    .local v9, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1650
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move v4, v6

    .local v4, "i":I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_4

    .line 1651
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1652
    .local v8, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1653
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1650
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1645
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v8    # "nextView":Landroid/view/View;
    .end local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1646
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_1

    .line 1647
    .restart local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1648
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_3

    .line 1655
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v4    # "i":I
    .restart local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1656
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1657
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-le v6, v12, :cond_5

    .line 1658
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1660
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1661
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v9}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1663
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1664
    return-void

    .line 1663
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_5
.end method

.method private handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1736
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1737
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1738
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1740
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateLeft() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1743
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1744
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1745
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1746
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1747
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1748
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_3

    .line 1749
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1750
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1751
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1748
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1742
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1743
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1744
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1753
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1754
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1755
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1756
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1757
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1758
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1759
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1760
    return-void

    .line 1759
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1852
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1853
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1854
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1855
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1858
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1859
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1861
    :cond_1
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxActiveToAvailable() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1864
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1865
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1866
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_2

    .line 1867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1868
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1869
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1866
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1871
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    .line 1872
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1873
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1874
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1871
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1876
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1877
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    .line 1878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1881
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1882
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1883
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1884
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1885
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1886
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1887
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1895
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1896
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1897
    return-void
.end method

.method private handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1797
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1798
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1799
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1800
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1803
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1806
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1808
    .local v2, "anim":Landroid/animation/AnimatorSet;
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxAvailableToActive() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1811
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1812
    .local v5, "longClickedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_2

    .line 1813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_0
    if-le v3, v11, :cond_2

    .line 1814
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1815
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1816
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1813
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 1819
    .end local v3    # "i":I
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 1820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1821
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1822
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1819
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1824
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1825
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1826
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1827
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1828
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1829
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1830
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1831
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "y"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1832
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1833
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    .line 1834
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1837
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1838
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1844
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1845
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1846
    return-void
.end method

.method private handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1766
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1767
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1768
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1770
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateRight() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1773
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1774
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1775
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1777
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1778
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1779
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-le v4, v12, :cond_3

    .line 1780
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1781
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1782
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1779
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1772
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1773
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1774
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1784
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1785
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1786
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1787
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1788
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1789
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1790
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1791
    return-void

    .line 1790
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 1925
    const-string v0, "QSEditPanel"

    const-string v1, "handleDelayedOnConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateLayoutParams()V

    .line 1927
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 1928
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 1929
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1076
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 1077
    const/4 v0, 0x1

    .line 1079
    :cond_0
    return v0
.end method

.method public static isMobileKeygboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 2027
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2028
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSuportMobileKeyboard()Z
    .locals 2

    .prologue
    .line 2023
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prepareViewsToAnimate()V
    .locals 5

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 1109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1110
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1111
    .local v2, "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1112
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1113
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1114
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1117
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1118
    .restart local v2    # "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1119
    .restart local v3    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1120
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1121
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1123
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1124
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1125
    .local v1, "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1127
    .end local v1    # "original":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1128
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1129
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1131
    .end local v1    # "original":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private refreshBackgroundViews()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 762
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v1

    .line 763
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v1, :cond_0

    .line 764
    add-int/lit8 v2, v2, 0x1

    .line 766
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ne v2, v9, :cond_1

    .line 767
    add-int/lit8 v2, v2, 0x1

    .line 769
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 771
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v1

    .line 774
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 775
    add-int/lit8 v5, v5, 0x1

    .line 777
    :cond_2
    if-nez v5, :cond_3

    .line 778
    const/4 v5, 0x1

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 782
    return-void

    .line 762
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 773
    .restart local v2    # "notiPanelLines":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    goto :goto_1
.end method

.method private refreshForegroundViews()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 733
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v3

    .line 734
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v3, :cond_0

    .line 735
    add-int/lit8 v2, v2, 0x1

    .line 737
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-ne v0, v6, :cond_1

    if-ne v2, v9, :cond_1

    .line 738
    add-int/lit8 v2, v2, 0x1

    .line 740
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 742
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v3

    .line 745
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 746
    add-int/lit8 v5, v5, 0x1

    .line 748
    :cond_2
    if-nez v5, :cond_3

    .line 749
    const/4 v5, 0x1

    .line 751
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-eq v0, v6, :cond_5

    .line 752
    if-ne v5, v9, :cond_8

    move v0, v9

    :goto_2
    if-ne v5, v6, :cond_4

    move v1, v9

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->updateHelpTextPosition(ZZ)V

    .line 754
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 755
    return-void

    .line 733
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 744
    .restart local v2    # "notiPanelLines":I
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .restart local v5    # "availBtnlLines":I
    :cond_8
    move v0, v1

    .line 752
    goto :goto_2
.end method

.method private refreshSfinderQConnectEditLayout()V
    .locals 7

    .prologue
    const v6, 0x7f09007f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 356
    const v2, 0x7f0f0214

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 357
    .local v1, "qsEditQconnectSfinderLayoutParent":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    const-string v2, "QSEditPanel"

    const-string v3, "refreshViews setVisibility(View.VISIBLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 361
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "checkBoxText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0350

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sfinderchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 374
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qconnectchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 382
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :goto_1
    return-void

    .line 371
    .restart local v0    # "checkBoxText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 380
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 668
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 673
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 674
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 675
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 676
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 678
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mNobackgroundEditPanel:Z

    if-nez v6, :cond_0

    .line 680
    const v6, 0x7f0201e6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    .local v0, "activeAreaBg":Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x42

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 682
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 685
    .end local v0    # "activeAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v6, 0x7f0c0012

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    .line 686
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 687
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x7f0e02d6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 688
    .local v1, "displayWidth":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 689
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 690
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 692
    :cond_1
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    .line 694
    .local v5, "width":I
    const v6, 0x7f0e0447

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 695
    .local v3, "qsEditPanelButtonContainerMargin":I
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 696
    const v6, 0x7f0e043a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    .line 698
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    if-gez v6, :cond_2

    .line 699
    iput v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 702
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshForegroundViews()V

    .line 703
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshBackgroundViews()V

    .line 704
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 705
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 707
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 708
    return-void
.end method

.method private saveButtonLists()V
    .locals 3

    .prologue
    .line 1257
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1258
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1261
    .local v1, "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1263
    .end local v1    # "original":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1264
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1265
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1267
    .end local v1    # "original":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private scrollPanleViews()V
    .locals 13

    .prologue
    .line 1394
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1397
    .local v3, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    .line 1398
    .local v2, "longClickedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v10, :cond_1

    .line 1399
    const/4 v1, 0x1

    .line 1404
    .local v1, "fromArea":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1405
    .local v8, "touchedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v8, v10, :cond_2

    .line 1406
    const/4 v7, 0x1

    .line 1411
    .local v7, "toArea":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1412
    .local v4, "scrollViewheight":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1413
    .local v5, "scrollY":I
    const v10, 0x7f0e0439

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1414
    .local v0, "buttonHeight":I
    const v10, 0x7f0e044b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0e043d

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v6, v10, v11

    .line 1416
    .local v6, "summaryTextHeight":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() longClickedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " touchedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scrollY : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() fromArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " toArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    div-int/lit8 v10, v0, 0x3

    sub-int v9, v0, v10

    .line 1420
    .local v9, "twoThirdsOfHeight":I
    if-ne v1, v7, :cond_6

    .line 1421
    if-nez v1, :cond_4

    if-nez v1, :cond_4

    .line 1422
    if-ltz v8, :cond_3

    const/4 v10, 0x4

    if-gt v8, v10, :cond_3

    .line 1423
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    .line 1449
    :cond_0
    :goto_2
    return-void

    .line 1401
    .end local v0    # "buttonHeight":I
    .end local v1    # "fromArea":I
    .end local v4    # "scrollViewheight":I
    .end local v5    # "scrollY":I
    .end local v6    # "summaryTextHeight":I
    .end local v7    # "toArea":I
    .end local v8    # "touchedIdx":I
    .end local v9    # "twoThirdsOfHeight":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto/16 :goto_0

    .line 1408
    .restart local v8    # "touchedIdx":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "toArea":I
    goto/16 :goto_1

    .line 1424
    .restart local v0    # "buttonHeight":I
    .restart local v4    # "scrollViewheight":I
    .restart local v5    # "scrollY":I
    .restart local v6    # "summaryTextHeight":I
    .restart local v9    # "twoThirdsOfHeight":I
    :cond_3
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-le v5, v9, :cond_0

    .line 1425
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1427
    :cond_4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 1428
    const/16 v10, 0xf

    if-lt v8, v10, :cond_5

    const/16 v10, 0x13

    if-gt v8, v10, :cond_5

    if-eqz v5, :cond_5

    .line 1429
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1430
    :cond_5
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1431
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1435
    :cond_6
    if-nez v1, :cond_8

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1436
    const/16 v10, 0xf

    if-lt v8, v10, :cond_7

    const/16 v10, 0x13

    if-gt v8, v10, :cond_7

    if-nez v5, :cond_7

    .line 1437
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1438
    :cond_7
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1439
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1441
    :cond_8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    if-nez v7, :cond_0

    .line 1442
    if-ltz v8, :cond_9

    const/4 v10, 0x4

    if-gt v8, v10, :cond_9

    if-eqz v5, :cond_9

    .line 1443
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1444
    :cond_9
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-eqz v5, :cond_0

    .line 1445
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2
.end method

.method private sendDiagnosticLogs()V
    .locals 6

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, "buttonName":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1273
    .local v2, "dropIdx":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v4, :cond_3

    .line 1274
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v4

    .line 1275
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1279
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1282
    :cond_2
    const/4 v3, 0x1

    .line 1283
    .local v3, "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1296
    .restart local v0    # "buttonName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MOVETOACTIVE"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "MOVETOAVAILABLE"

    aput-object v5, v1, v4

    .line 1297
    .local v1, "diagnosticMessage":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    .end local v1    # "diagnosticMessage":[Ljava/lang/String;
    .end local v3    # "toArea":I
    :cond_3
    const/4 v3, 0x0

    .line 1286
    .restart local v3    # "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1289
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1290
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1293
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "buttonName":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v2, "MOVETOACTIVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1307
    const-string v2, "feature"

    const-string v3, "QS01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1318
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1320
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1322
    return-void

    .line 1308
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "MOVETOAVAILABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    const-string v2, "feature"

    const-string v3, "QS02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_2
    const-string v2, "QCONNECT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1311
    const-string v2, "feature"

    const-string v3, "QS08"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1312
    :cond_3
    const-string v2, "SFINDER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1313
    const-string v2, "feature"

    const-string v3, "QS07"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocus(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/16 v9, 0x65

    const v8, 0x7f0f020d

    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 978
    .local v1, "diff":I
    if-nez p1, :cond_2

    .line 979
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 980
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 981
    .local v4, "parent":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 996
    :cond_0
    :goto_0
    const-string v5, "QSEditPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFocus() childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 999
    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1001
    .local v3, "mFocusableChild":Landroid/widget/FrameLayout;
    if-nez v3, :cond_3

    .line 1046
    .end local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_1
    return-void

    .line 983
    .end local v2    # "i":I
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 984
    const/16 v1, 0x65

    .line 985
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 987
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 989
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 990
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 991
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 992
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1005
    .restart local v2    # "i":I
    .restart local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    .line 1006
    add-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    .line 1015
    :goto_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_6

    .line 1016
    add-int v5, v2, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    .line 1024
    :goto_3
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    if-ge v5, v0, :cond_8

    .line 1025
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    .line 1037
    :goto_4
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int v5, v2, v5

    if-ltz v5, :cond_b

    .line 1038
    add-int v5, v2, v1

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    .line 997
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1008
    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1009
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x65

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1011
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1018
    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1019
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1021
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1027
    :cond_8
    if-nez p1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1028
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1030
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1031
    const v5, 0x7f0f0216

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1033
    :cond_a
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1040
    :cond_b
    if-nez p1, :cond_c

    .line 1041
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto :goto_5

    .line 1043
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto/16 :goto_5
.end method

.method private setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V
    .locals 1
    .param p1, "panelViewFocus"    # Landroid/widget/FrameLayout;
    .param p2, "idx"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1050
    if-nez p3, :cond_0

    .line 1051
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    add-int/lit8 v0, p2, 0x65

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_0
.end method

.method private showHideQConnectEditLayout()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 341
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 344
    .local v1, "isEmergencyMode":Z
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 345
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    :cond_0
    const-string v2, "QSEditPanel"

    const-string v4, "showHideQConnectEditLayout should be hide"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 353
    :cond_1
    return v2

    :cond_2
    move v1, v3

    .line 344
    goto :goto_0
.end method

.method private showToastPopup()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x6d

    const/16 v11, 0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1334
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1335
    .local v2, "longClickedIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v9, :cond_2

    .line 1336
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v9

    .line 1337
    const/4 v1, 0x1

    .line 1342
    .local v1, "fromArea":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1343
    .local v0, "dropIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v0, v9, :cond_3

    .line 1344
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v0, v9

    .line 1345
    const/4 v6, 0x1

    .line 1350
    .local v6, "toArea":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    if-nez v9, :cond_0

    .line 1351
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    .line 1353
    :cond_0
    if-nez v1, :cond_4

    if-ne v6, v8, :cond_4

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_4

    .line 1354
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04e4

    new-array v8, v8, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1355
    .local v3, "message":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1357
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 1358
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1359
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1389
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    :goto_2
    return v7

    .line 1339
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v6    # "toArea":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_0

    .line 1347
    .restart local v0    # "dropIdx":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1362
    :cond_4
    if-ne v1, v8, :cond_6

    if-nez v6, :cond_6

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_6

    .line 1363
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1364
    .local v5, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1365
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1366
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1367
    const/4 v4, 0x0

    .line 1368
    .local v4, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1369
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1371
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1372
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1373
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .line 1375
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    if-eqz v9, :cond_8

    if-nez v1, :cond_8

    if-ne v6, v8, :cond_8

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_8

    .line 1376
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1377
    .restart local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1378
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1379
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1380
    const/4 v4, 0x0

    .line 1381
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1382
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1384
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1385
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1386
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_8
    move v7, v8

    .line 1389
    goto :goto_2
.end method

.method private showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p2, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "overLayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1149
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1158
    :cond_2
    return-void
.end method

.method private updateHelpTextPosition(ZZ)V
    .locals 5
    .param p1, "oneLine"    # Z
    .param p2, "twoLines"    # Z

    .prologue
    const v4, 0x7f0e043e

    const v3, 0x7f0e043d

    .line 711
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 712
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 713
    .local v0, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 714
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 715
    :cond_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 718
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 719
    if-eqz p1, :cond_3

    .line 720
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 725
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    return-void

    .line 721
    :cond_3
    if-eqz p2, :cond_2

    .line 722
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private updateLayoutParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1953
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1954
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1955
    .local v1, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0e043d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1956
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1957
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1958
    .local v0, "lpmActiveParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0e043c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1959
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    const v4, 0x7f0e043b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1960
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1961
    return-void
.end method

.method private updateTextResources()V
    .locals 4

    .prologue
    .line 1941
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$9;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/QSEditPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1947
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1948
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 1949
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    const v2, 0x7f0a04e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    return-void
.end method


# virtual methods
.method protected handleUpdateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    .prologue
    .line 646
    const/4 v2, 0x0

    .line 648
    .local v2, "viewToUpdate":Landroid/view/View;
    const-string v3, "QSEditPanel"

    const-string v4, "handleUpdateViewChangeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v2, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 652
    :cond_0
    if-eqz v2, :cond_1

    .line 653
    const v3, 0x7f0f0228

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 654
    .local v0, "panelImageView":Landroid/widget/ImageView;
    const v3, 0x7f0f0229

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 656
    .local v1, "panelTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 657
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 659
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 661
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 662
    iget-object v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 665
    .end local v0    # "panelImageView":Landroid/widget/ImageView;
    .end local v1    # "panelTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 385
    const-string v1, "QSEditPanel"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 387
    const v1, 0x7f0f0212

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 388
    const v1, 0x7f0f0210

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 389
    const v1, 0x7f0f020f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    .line 390
    const v1, 0x7f0f0211

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    .line 392
    const v1, 0x7f0f020e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    .line 394
    const v1, 0x7f0f0213

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    .line 395
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 396
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 397
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    const v1, 0x7f0f020d

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    .local v0, "doneButton":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 402
    const v1, 0x7f0f0216

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    .line 403
    const v1, 0x7f0f021a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    .line 404
    const v1, 0x7f0f0215

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    .line 405
    const v1, 0x7f0f0219

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    .line 407
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSEditPanel$2;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSEditPanel$3;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x70

    .line 1903
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1904
    const-string v0, "QSEditPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1907
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V

    .line 1909
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 1910
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 1912
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1916
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1917
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    .line 1922
    :cond_2
    :goto_0
    return-void

    .line 1919
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1070
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1072
    return-void
.end method

.method public resetPanel()V
    .locals 8

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 504
    const-string v0, "QSEditPanel"

    const-string v1, "resetPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_c

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 516
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 534
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 537
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 540
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 543
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 546
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_a
    invoke-static {}, Lcom/android/systemui/qs/QSEditPanel;->isSuportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 554
    :cond_b
    return-void

    .line 509
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto/16 :goto_0
.end method

.method public saveAppslist()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 1965
    const-string v0, ""

    .line 1969
    .local v0, "activeApps":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 1970
    const-string v4, "QSEditPanel"

    const-string v5, "invalid mArrayActiveList.  do not saveAppslist()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 1974
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1975
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1976
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1977
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1979
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1981
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1982
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1983
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1980
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1985
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_3
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  totalButtons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1990
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1994
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v4, :cond_5

    .line 1995
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xe

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 2000
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2001
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_6

    .line 2002
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2006
    :goto_4
    sget-boolean v4, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v4, :cond_4

    const-string v5, "SFINDER"

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "enable"

    :goto_5
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_8

    .line 2009
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2013
    :goto_6
    sget-boolean v4, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v4, :cond_0

    const-string v5, "QCONNECT"

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "enable"

    :goto_7
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1997
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_3

    .line 2004
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 2006
    :cond_7
    const-string v4, "disable"

    goto :goto_5

    .line 2011
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 2013
    :cond_9
    const-string v4, "disable"

    goto :goto_7
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 337
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2019
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v3, 0x0

    .line 557
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 558
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 559
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 560
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 561
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 562
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 563
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 564
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_0

    .line 566
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 479
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 480
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 481
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 483
    .local v4, "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 484
    .local v2, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 485
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 486
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 487
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 492
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 493
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 494
    .restart local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 495
    .restart local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 496
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 497
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 498
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return-void
.end method
