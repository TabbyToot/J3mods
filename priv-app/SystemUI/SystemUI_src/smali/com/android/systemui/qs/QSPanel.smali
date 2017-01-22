.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/FrameLayout;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;,
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# static fields
.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field public static final MULTI_LINE:Z = false

.field private static final TILE_ASPECT:F = 1.2f

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-QSPanel"

.field private static mDiagnosticLogs:Z


# instance fields
.field private mBottomPadding:I

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeight:I

.field private mBrightnessPaddingTop:I

.field private mButtonCorrectionWidth:I

.field private mButtonGap:I

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mClosingDetail:Z

.field private mCocktailBarPresent:Z

.field private mColumns:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mDefaultDisplay:Landroid/view/Display;

.field private mDetail:Landroid/view/View;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDetailSettingsButton:Landroid/widget/TextView;

.field private mDetailTitleHeight:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mExtraMargin:I

.field private mFirstQsId:I

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsCocktailBarEnabled:Z

.field private mIsCoveredState:Z

.field mIsRtl:Z

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mNotificationPadding:I

.field private mNotificationPanelWidth:I

.field private mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

.field mOldConfig:Landroid/content/res/Configuration;

.field private mPanelPaddingBottom:I

.field private mQConnectHeight:I

.field private mQSPanelSidePadding:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSingleLine:Z

.field private mSingleLineBottomPadding:I

.field private mTopMarginFirstRow:I

.field private mTopMarginRow:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mVisibleButtonNum:I

.field mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 89
    new-instance v2, Lcom/android/systemui/qs/QSPanel$H;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 114
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 120
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    .line 135
    iput v4, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    .line 145
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    .line 147
    const v2, 0x7f0f0053

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    .line 337
    iput-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 159
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 160
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 161
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mWM:Landroid/view/IWindowManager;

    .line 163
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 164
    new-instance v2, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    .line 165
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    .line 170
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0472

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    .line 175
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040069

    invoke-virtual {v2, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 179
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v4, 0x102001a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v4, 0x1020019

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v2, 0x7f0e036a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailTitleHeight:I

    .line 205
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 206
    .local v0, "ld":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 209
    new-instance v2, Lcom/android/systemui/qs/QSPanel$2;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 215
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 218
    .end local v0    # "ld":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 234
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    .line 237
    return-void

    :cond_2
    move v2, v4

    .line 173
    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/qs/QSPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getButtonNumberFromDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->sendLogs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 494
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 495
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 496
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 497
    new-instance v0, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 548
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 549
    new-instance v1, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 555
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 561
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui/qs/QSPanel$6;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$6;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 568
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 569
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 570
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 571
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 572
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 575
    return-void
.end method

.method private adjustCellWidth()V
    .locals 4

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 795
    .local v0, "displayWidth":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 799
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v1, :cond_1

    .line 800
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    .line 803
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 805
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    if-eqz v1, :cond_2

    .line 806
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    sub-int/2addr v0, v1

    .line 810
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v1, :cond_3

    .line 811
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    .line 816
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    sub-int/2addr v1, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    .line 817
    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCellWidth mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void

    .line 813
    :cond_3
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    goto :goto_0
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 790
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 906
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 894
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 900
    :cond_0
    return-void
.end method

.method private getButtonNumberFromDB()I
    .locals 5

    .prologue
    .line 1094
    const/16 v0, 0xa

    .line 1095
    .local v0, "ButtonNumber":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1099
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1106
    :cond_1
    :goto_0
    const-string v2, "StatusBar-QSPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button Number from DB :  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return v0

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "StatusBar-QSPanel"

    const-string v3, "getButtonNumberFromDB() - SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1, "row"    # I

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, "cols":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 884
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 885
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v0, :cond_1

    .line 868
    if-gtz p1, :cond_0

    .line 869
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    .line 874
    :goto_0
    return v0

    .line 870
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    goto :goto_0

    .line 872
    :cond_1
    if-gtz p1, :cond_2

    .line 873
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    goto :goto_0

    .line 874
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "StatusBar-QSPanel"

    const-string v1, "handleDelayedOnConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshTileLabel()V

    .line 377
    return-void
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 614
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 615
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 619
    :goto_0
    return-void

    .line 617
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 8
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 636
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_1

    .line 683
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 636
    goto :goto_0

    .line 637
    :cond_1
    const/4 v0, 0x0

    .line 639
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    if-eqz p2, :cond_4

    .line 640
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 641
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, v6, v7}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 642
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must return detail view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    .line 645
    .local v1, "settingsIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/systemui/qs/QSPanel$7;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSPanel$7;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 654
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 655
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 656
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 669
    .end local v1    # "settingsIntent":Landroid/content/Intent;
    :goto_3
    if-eqz p2, :cond_5

    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 673
    if-eqz p2, :cond_6

    .line 674
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 676
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    goto :goto_1

    .restart local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .restart local v1    # "settingsIntent":Landroid/content/Intent;
    :cond_3
    move v2, v4

    .line 645
    goto :goto_2

    .line 666
    .end local v1    # "settingsIntent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    :cond_5
    move-object v0, v5

    .line 669
    goto :goto_4

    .line 679
    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 681
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_1
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 633
    return-void
.end method

.method private refreshAllTiles()V
    .locals 3

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 439
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 444
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method private sendLogs()V
    .locals 4

    .prologue
    .line 1149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v2, "feature"

    const-string v3, "QS07"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1154
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1156
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1158
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    .line 914
    :goto_0
    return-void

    .line 910
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 911
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 913
    .local v0, "scanState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 911
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 458
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 454
    return-void

    :cond_0
    move v0, v2

    .line 453
    goto :goto_0
.end method

.method private updateButtonInfo()V
    .locals 4

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 977
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 978
    const v1, 0x7f0e0333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    .line 979
    const v1, 0x7f0e0334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    .line 980
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 981
    const v1, 0x7f0e02ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 982
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    .line 983
    const v1, 0x7f0e02dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 984
    const v1, 0x7f0e03db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeight:I

    .line 985
    const v1, 0x7f0e03ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mQConnectHeight:I

    .line 986
    const v1, 0x7f0e046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    .line 987
    const v1, 0x7f0e046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    .line 988
    const v1, 0x7f0e046e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    .line 989
    const v1, 0x7f0e046f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    .line 990
    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtonInfo mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mColumns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orien: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mButtonCorrectionWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method private updateDetailText()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v2, 0x7f0a02e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v2, 0x7f0a02e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "button":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method


# virtual methods
.method public SetCocktailBarEnabled(Z)V
    .locals 0
    .param p1, "isCocktailBarEnabled"    # Z

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    .line 1133
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .prologue
    .line 602
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 603
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 703
    const/4 v0, 0x1

    .line 706
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleLine()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x3

    .line 341
    const-string v3, "StatusBar-QSPanel"

    const-string v4, "onConfigurationChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v0, 0x80

    .line 344
    .local v0, "diff":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 347
    :cond_0
    const-string v3, "StatusBar-QSPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newConfig diff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    .line 349
    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 369
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_5

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    .line 355
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 357
    .local v1, "ld":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 360
    .end local v1    # "ld":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/QSPanel$H;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/QSPanel$H;->removeMessages(I)V

    .line 364
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-eqz v2, :cond_6

    .line 365
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->handleDelayedOnConfigurationChanged()V

    goto :goto_0

    .line 353
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 367
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/systemui/qs/QSPanel$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v8

    .line 832
    .local v8, "w":I
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 833
    .local v6, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 834
    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v0

    .line 835
    .local v0, "cols":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 836
    .local v1, "cw":I
    mul-int v9, v1, v0

    sub-int v9, v8, v9

    add-int/lit8 v10, v0, 0x1

    div-int v3, v9, v10

    .line 837
    .local v3, "extra":I
    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v10, v1

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    add-int v5, v9, v10

    .line 838
    .local v5, "left":I
    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v7

    .line 841
    .local v7, "top":I
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v9, :cond_1

    .line 842
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    sub-int/2addr v5, v9

    .line 845
    :cond_1
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v11, v7

    invoke-virtual {v9, v5, v7, v10, v11}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    .line 848
    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLayout left:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " top:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " record.row:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    .end local v0    # "cols":I
    .end local v1    # "cw":I
    .end local v3    # "extra":I
    .end local v5    # "left":I
    .end local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v7    # "top":I
    :cond_2
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_3

    .line 852
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 853
    .local v2, "dh":I
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 863
    .end local v2    # "dh":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 717
    const/4 v6, -0x1

    .line 718
    .local v6, "r":I
    const/4 v0, -0x1

    .line 719
    .local v0, "c":I
    const/4 v9, 0x0

    .line 720
    .local v9, "rows":I
    const/4 v8, 0x0

    .line 721
    .local v8, "rowIsDual":Z
    const/4 v10, 0x0

    .line 723
    .local v10, "visibleTile":I
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v12, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    .line 726
    :cond_0
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 727
    .local v7, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    .line 729
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_4

    .line 730
    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v12, v12, -0x1

    if-ge v0, v12, :cond_2

    .line 732
    add-int/lit8 v10, v10, 0x1

    .line 737
    :cond_2
    const/4 v6, 0x0

    .line 738
    add-int/lit8 v0, v0, 0x1

    .line 739
    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 740
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    if-eqz v12, :cond_3

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v0

    :goto_1
    iput v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 741
    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    :cond_3
    move v12, v0

    .line 740
    goto :goto_1

    .line 745
    :cond_4
    const/4 v12, -0x1

    if-eq v6, v12, :cond_5

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_6

    .line 746
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 747
    const/4 v0, 0x0

    .line 751
    :goto_2
    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 752
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v0

    :goto_3
    iput v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 753
    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    .line 749
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v12, v0

    .line 752
    goto :goto_3

    .line 757
    .end local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_8
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 758
    .restart local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v13, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)V

    .line 759
    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_9

    .line 760
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 761
    .local v2, "cw":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 762
    .local v1, "ch":I
    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    goto :goto_4

    .line 765
    .end local v1    # "ch":I
    .end local v2    # "cw":I
    .end local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_a
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_d

    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v12

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    add-int v3, v12, v13

    .line 772
    .local v3, "h":I
    :goto_5
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_e

    move v5, v10

    .line 773
    .local v5, "mTileNum":I
    :goto_6
    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v12, v13

    mul-int/2addr v12, v5

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int v11, v12, v13

    .line 776
    .local v11, "w":I
    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v12, :cond_b

    .line 777
    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    .line 780
    :cond_b
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 781
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v11}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 782
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 785
    :cond_c
    invoke-virtual {p0, v11, v3}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    .line 787
    return-void

    .line 765
    .end local v3    # "h":I
    .end local v5    # "mTileNum":I
    .end local v11    # "w":I
    :cond_d
    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v12

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int v3, v12, v13

    goto :goto_5

    .line 772
    .restart local v3    # "h":I
    :cond_e
    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    goto :goto_6
.end method

.method public recreateDetail()V
    .locals 5

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    :cond_0
    return-void
.end method

.method public refreshTileLabel()V
    .locals 4

    .prologue
    .line 393
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 395
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 396
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getNeedFontChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->useTruncatedName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyCutandReduceTextSize(I)V

    goto :goto_1

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(I)V

    goto :goto_1

    .line 406
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_2
    return-void
.end method

.method public resetAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1123
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    .line 1125
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0f0201

    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 250
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 251
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 252
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 254
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 258
    return-void
.end method

.method public setCoverState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 1136
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoveredState:Z

    if-ne v2, p1, :cond_1

    .line 1144
    :cond_0
    return-void

    .line 1140
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoveredState:Z

    .line 1141
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1142
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->coverStateChanged(Z)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    goto :goto_0
.end method

.method public setFocus()V
    .locals 4

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "childCount":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 581
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 582
    .local v2, "mFocusableChild":Landroid/view/View;
    if-nez v2, :cond_1

    .line 596
    .end local v2    # "mFocusableChild":Landroid/view/View;
    :cond_0
    return-void

    .line 585
    .restart local v2    # "mFocusableChild":Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    .line 586
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 590
    :goto_1
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_3

    .line 591
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 580
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_1

    .line 593
    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_2
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 263
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 409
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_1

    .line 435
    :cond_0
    return-void

    .line 410
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 411
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 412
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 414
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    .line 416
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 418
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getNeedFontChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V

    goto :goto_0
.end method

.method public setNotificationPanelWidth(I)V
    .locals 0
    .param p1, "notificationPanelWidth"    # I

    .prologue
    .line 1128
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    .line 1129
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    if-ne v0, p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    goto :goto_0
.end method

.method public setSecondLineAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1115
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    .line 1119
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public setSingleLine(Z)I
    .locals 14
    .param p1, "singleLine"    # Z

    .prologue
    const/16 v13, 0x8

    const/4 v12, -0x2

    const/4 v1, 0x0

    .line 996
    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSingleLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 999
    :cond_0
    const-string v9, "StatusBar-QSPanel"

    const-string v10, "setSingleLine() - return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :goto_0
    return v1

    .line 1002
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    .line 1003
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    .line 1005
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_2
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v9, :cond_3

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 1009
    :cond_3
    const/4 v5, -0x1

    .line 1010
    .local v5, "r":I
    const/4 v0, -0x1

    .line 1011
    .local v0, "c":I
    const/4 v8, 0x0

    .line 1012
    .local v8, "rows":I
    const/4 v7, 0x0

    .line 1013
    .local v7, "rowIsDual":Z
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1014
    .local v6, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v9, :cond_6

    .line 1015
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_4

    .line 1016
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 1021
    :goto_2
    const/4 v5, 0x0

    .line 1022
    add-int/lit8 v0, v0, 0x1

    .line 1023
    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 1024
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    :goto_3
    iput v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 1025
    add-int/lit8 v8, v5, 0x1

    goto :goto_1

    .line 1019
    :cond_4
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v13}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v9, v0

    .line 1024
    goto :goto_3

    .line 1029
    :cond_6
    const/4 v9, -0x1

    if-eq v5, v9, :cond_7

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_8

    .line 1030
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1031
    const/4 v0, 0x0

    .line 1035
    :goto_4
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 1036
    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 1037
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mIsRtl:Z

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    :goto_5
    iput v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 1038
    add-int/lit8 v8, v5, 0x1

    goto :goto_1

    .line 1033
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v9, v0

    .line 1037
    goto :goto_5

    .line 1041
    .end local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1042
    .restart local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v9

    if-eq v9, v13, :cond_b

    .line 1045
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1047
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    add-int v3, v9, v10

    .line 1050
    .local v3, "left":I
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v9, :cond_c

    .line 1051
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    sub-int/2addr v3, v9

    .line 1054
    :cond_c
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1055
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1056
    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1057
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v9, v4}, Lcom/android/systemui/qs/QSPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1061
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_d
    const/4 v1, 0x0

    .line 1063
    .local v1, "height":I
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v9, :cond_e

    .line 1064
    add-int/lit8 v9, v8, -0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    add-int v1, v9, v10

    .line 1075
    :goto_7
    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSingleLine height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1067
    :cond_e
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1068
    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mDetailTitleHeight:I

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    check-cast v9, Lcom/android/systemui/qs/tiles/UserDetailView;

    check-cast v9, Lcom/android/systemui/qs/tiles/UserDetailView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/tiles/UserDetailView;->getGridViewHeight()I

    move-result v9

    add-int v1, v10, v9

    goto :goto_7

    .line 1071
    :cond_f
    add-int/lit8 v9, v8, -0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int v1, v9, v10

    goto :goto_7
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 8
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
    .line 466
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const-string v5, "StatusBar-QSPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qstile setTiles"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 468
    .local v3, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 470
    .end local v3    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile;

    .line 474
    .local v4, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    .line 476
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowMaxTenTiles:Z

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_1

    .line 480
    .end local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    :cond_3
    const/4 v2, 0x0

    .line 484
    .local v2, "j":I
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 485
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mFirstQsId:I

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setId(I)V

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v5, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setFocus()V

    .line 490
    :cond_5
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 447
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 448
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 450
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    const v3, 0x7f0c0012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 278
    .local v0, "columns":I
    const v2, 0x7f0e02ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 279
    const v2, 0x7f0e02e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    .line 280
    const v2, 0x7f0e02f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    .line 283
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    .line 284
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    .line 287
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 291
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshTileLabel()V

    .line 299
    return-void
.end method
