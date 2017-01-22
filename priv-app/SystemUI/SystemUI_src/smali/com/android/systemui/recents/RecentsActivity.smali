.class public Lcom/android/systemui/recents/RecentsActivity;
.super Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;,
        Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern;

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field private static mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

.field private static mScreenPinningRequestSubDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field public TAG:Ljava/lang/String;

.field private isFolderDevice:Z

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mBlockBackKeyEvent:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field private mIsLaunchingExpandHome:Z

.field private mIsLaunchingTask:Z

.field mKioskModeEnabled:Z

.field mLastTabKeyEventTime:J

.field private mMultiWindowSettingObserver:Landroid/database/ContentObserver;

.field mNeedDarkFont:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field mRecentsButtons:Landroid/view/View;

.field mRecentsCloseAllButton:Landroid/view/View;

.field private mRecentsDivider02:Landroid/widget/LinearLayout;

.field private mRecentsGoogleButton:Landroid/view/View;

.field mRecentsLaunchButton:Landroid/view/View;

.field mRecentsRemoveAllButton:Landroid/view/View;

.field mRecentsShort:Landroid/view/View;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutComponentNames:[Ljava/lang/String;

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

.field private mUPSMObserver:Landroid/database/ContentObserver;

.field private mlockToAppObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;-><init>()V

    .line 178
    const-string v0, "Recents_RecentsActivity"

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    .line 221
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    .line 227
    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    .line 228
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    .line 229
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 230
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingExpandHome:Z

    .line 231
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingTask:Z

    .line 234
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    .line 331
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 428
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    .line 429
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 430
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    .line 436
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    .line 2156
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isControlPanelInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/RecentsActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method private checkAssistAppIsInstalled()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1116
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 1118
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1119
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1120
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1121
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1133
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 1125
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1127
    const/4 v3, 0x1

    goto :goto_0

    .line 1129
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 1133
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 447
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 450
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    :goto_0
    return v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1256
    .local v1, "mAM":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 1258
    .local v2, "mIconDpi":I
    :try_start_0
    const-string v4, "anindya"

    const-string v5, "here"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1264
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 1260
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    .prologue
    .line 2123
    const/4 v2, 0x0

    .line 2125
    .local v2, "useControlPanel":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2127
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 2128
    const/4 v2, 0x1

    .line 2136
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 2130
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2132
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2133
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 2134
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "CONTROL_PANEL_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2140
    if-nez p0, :cond_0

    .line 2143
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2345
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2346
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2349
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2350
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2351
    const/4 v3, 0x1

    .line 2353
    :cond_0
    return v3
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    .prologue
    .line 2106
    const/4 v2, 0x0

    .line 2108
    .local v2, "useTaskManager":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2110
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 2111
    const/4 v2, 0x1

    .line 2119
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 2113
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2115
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 2117
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "TASK_MANAGER_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1233
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 1234
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1235
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1249
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 1239
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 1240
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 1241
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recents/RecentsActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1242
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1249
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static notifyRecentPanelVisiblity(Z)V
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    .line 2148
    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 2149
    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->notifyRecentPanelVisiblity(Z)V

    .line 2154
    :goto_0
    return-void

    .line 2151
    :cond_0
    const-string v0, "Recents_RecentsActivity(not declared)"

    const-string v1, "mStatusBarManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2199
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 2200
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$7;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    .line 2206
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2207
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2211
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 2212
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$8;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 2223
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2224
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2228
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 2229
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    .line 2235
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2236
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "lock_to_app_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2240
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    return-void
.end method

.method private registerRotationListener()V
    .locals 2

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 2271
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$10;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    .line 2290
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2291
    return-void
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3
    .param p1, "assist_type"    # I

    .prologue
    const v2, 0x7f020601

    const/4 v1, 0x0

    .line 1137
    if-nez p1, :cond_3

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1139
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a03a9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1146
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1150
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1151
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    .line 1152
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1153
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    .line 1155
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    .prologue
    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1177
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-virtual/range {v20 .. v23}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 1179
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 1180
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1181
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_0

    .line 1182
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1185
    .local v7, "buttonText":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1189
    .local v13, "metaData":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "iconResId":I
    if-eqz v11, :cond_1

    .line 1191
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    .line 1192
    .local v17, "res":Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1197
    .end local v11    # "iconResId":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .local v6, "buttonIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020607

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1199
    .local v4, "SearchIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1200
    .local v19, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1201
    .local v10, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 1203
    .local v18, "scale":F
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1205
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1206
    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "buttonText":Ljava/lang/String;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :cond_0
    :goto_1
    return-void

    .line 1194
    .restart local v7    # "buttonText":Ljava/lang/String;
    .restart local v13    # "metaData":Landroid/os/Bundle;
    .restart local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1209
    .restart local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "height":I
    .restart local v18    # "scale":F
    .restart local v19    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1220
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :catch_0
    move-exception v9

    .line 1221
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1213
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "height":I
    .restart local v13    # "metaData":Landroid/os/Bundle;
    .restart local v18    # "scale":F
    .restart local v19    # "width":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1214
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "buttonIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1215
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1217
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1222
    .end local v4    # "SearchIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "height":I
    .end local v13    # "metaData":Landroid/os/Bundle;
    .end local v18    # "scale":F
    .end local v19    # "width":I
    :catch_1
    move-exception v14

    .line 1223
    .local v14, "nfe":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 4

    .prologue
    const v3, 0x7f0a00e1

    const v2, 0x7f020607

    const/4 v1, 0x0

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1161
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private unregisterRotationListener()V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2297
    :cond_0
    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 909
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 912
    const/4 v1, 0x1

    .line 914
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f050067

    const/16 v6, 0x8

    .line 864
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dismissRecentsToHomeRaw is getting called animated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 868
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 871
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 873
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 879
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 880
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 882
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 887
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    const/4 v1, 0x0

    .line 888
    .local v1, "blockFinishRunnableAnim":Z
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 889
    const/4 v1, 0x1

    .line 892
    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v3, :cond_3

    .line 894
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v2, p0, v8, v3, v8}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 896
    .local v2, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v4, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 901
    .end local v2    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 899
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method protected getOppositeLaunchingState(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 2337
    const/4 v0, 0x0

    return v0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAltTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1107
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onAttachedToWindow()V

    .line 1108
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1109
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 1112
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v0, :cond_0

    .line 1737
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    .line 1739
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 920
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 924
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate is getting called mDisplayId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v9, "statusbar"

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    sput-object v9, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    .line 937
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->folderTypeFeature(Landroid/content/Context;)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    .line 939
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 940
    .local v0, "appListShadowDistance":Landroid/util/TypedValue;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e048f

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 941
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    .line 943
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 944
    .local v1, "appListShadowOpacity":Landroid/util/TypedValue;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0490

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v1, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 945
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    .line 947
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 948
    .local v2, "appListStrokeOpacity":Landroid/util/TypedValue;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e048e

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 949
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    .line 952
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 953
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 954
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v7}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 968
    new-instance v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    .line 973
    new-instance v9, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v10, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 976
    const v9, 0x7f040078

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 977
    const v9, 0x7f0f022d

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 978
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 979
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v10, 0x700

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 982
    const v9, 0x7f0f022e

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 991
    const v9, 0x7f0f022f

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 992
    new-instance v9, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 995
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 998
    new-instance v9, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v9, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1000
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v9, :cond_8

    .line 1001
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v9, :cond_6

    .line 1002
    const v9, 0x7f0f023f

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 1003
    const v9, 0x7f0f0240

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    .line 1004
    const v9, 0x7f0f0244

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 1010
    :goto_1
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-eqz v9, :cond_1

    .line 1011
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v9, :cond_7

    .line 1012
    const v9, 0x7f0f0242

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    .line 1014
    const v9, 0x7f0f0243

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    .line 1021
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->checkAssistAppIsInstalled()I

    move-result v6

    .line 1022
    .local v6, "mAssistApp":I
    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTextAndIcon(I)V

    .line 1024
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 1025
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1027
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    .line 1030
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1034
    .end local v6    # "mAssistApp":I
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1036
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1039
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mNotShowHoverOnRecentsButton:Z

    if-nez v9, :cond_2

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v9, :cond_3

    .line 1040
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1041
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1065
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 1068
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1069
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    const-string v9, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1073
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V

    .line 1082
    :try_start_0
    const-string v9, "ambientRatio"

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1090
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 1091
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1092
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v9, :cond_4

    .line 1093
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1095
    :cond_4
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1097
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v9, v9, 0x42

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1100
    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1102
    return-void

    .line 937
    .end local v0    # "appListShadowDistance":Landroid/util/TypedValue;
    .end local v1    # "appListShadowOpacity":Landroid/util/TypedValue;
    .end local v2    # "appListStrokeOpacity":Landroid/util/TypedValue;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v8    # "win":Landroid/view/Window;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1006
    .restart local v0    # "appListShadowDistance":Landroid/util/TypedValue;
    .restart local v1    # "appListShadowOpacity":Landroid/util/TypedValue;
    .restart local v2    # "appListStrokeOpacity":Landroid/util/TypedValue;
    .restart local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_6
    const v9, 0x7f0f0245

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 1007
    const v9, 0x7f0f0246

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    .line 1008
    const v9, 0x7f0f024a

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_1

    .line 1016
    :cond_7
    const v9, 0x7f0f0248

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    .line 1018
    const v9, 0x7f0f0249

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_2

    .line 1050
    :cond_8
    const v9, 0x7f0f024b

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 1051
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    const v9, 0x7f0f0096

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsCloseAllButton:Landroid/view/View;

    .line 1053
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsCloseAllButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsCloseAllButton:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1055
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsCloseAllButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1056
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/RecentsView;->setCloseAllButton(Landroid/view/View;)V

    .line 1058
    const v9, 0x7f0f0231

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    goto/16 :goto_3

    .line 1083
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_4

    .line 1085
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 1086
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1745
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 1746
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1747
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1749
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1750
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1751
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1752
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 1764
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please restart Recents now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1768
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 1757
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1758
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1759
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1760
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 1761
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 1764
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1519
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onDestroy()V

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterContentObserver()V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 1538
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1542
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1543
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1544
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 1545
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 1546
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1549
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 1562
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 1563
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 1776
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1603
    sparse-switch p1, :sswitch_data_0

    .line 1718
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v5, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 1719
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    .line 1605
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v8, v10

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    move v4, v5

    .line 1607
    .local v4, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v4, :cond_1

    .line 1609
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 1610
    .local v0, "backward":Z
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 1611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v4    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v4, v6

    .line 1605
    goto :goto_1

    .line 1626
    :sswitch_1
    const/16 v3, 0x13

    .line 1627
    .local v3, "forwardKey":I
    const/16 v1, 0x14

    .line 1628
    .local v1, "backwardKey":I
    const/4 v2, 0x0

    .line 1654
    .local v2, "displayChangeKey":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v7, :cond_5

    .line 1655
    const/16 v3, 0x15

    .line 1656
    const/16 v1, 0x16

    .line 1660
    :cond_5
    if-ne p1, v3, :cond_7

    .line 1662
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1665
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 1668
    :cond_7
    if-ne p1, v1, :cond_9

    .line 1670
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1673
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 1677
    :cond_9
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1682
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 1711
    .end local v1    # "backwardKey":I
    .end local v2    # "displayChangeKey":I
    .end local v3    # "forwardKey":I
    :sswitch_2
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto/16 :goto_0

    .line 1603
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
    .line 1583
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-nez v0, :cond_0

    .line 1584
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1597
    :goto_0
    return v0

    .line 1586
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1597
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1592
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_1

    .line 1586
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1283
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent is getting called mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    if-eqz v0, :cond_1

    .line 1314
    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 1318
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1476
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onPause()V

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1481
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1885
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/high16 v3, 0x100000

    const/4 v2, 0x0

    .line 1445
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onResume()V

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isKnoxLauncherMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1459
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1465
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1467
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1470
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 1472
    :cond_1
    return-void

    .line 1461
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1568
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1569
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 4

    .prologue
    .line 1829
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onScreenPinningRequest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1831
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 1832
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_1

    .line 1833
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1834
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onScreenPinningRequest - topActivity is Recents || Home"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :goto_0
    return-void

    .line 1848
    :cond_1
    sget-object v2, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v2}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->showPrompt()V

    goto :goto_0
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1890
    return-void
.end method

.method protected onStart()V
    .locals 25

    .prologue
    .line 1322
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStart()V

    .line 1323
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    .line 1324
    .local v10, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v20

    .line 1326
    .local v20, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "onStart is getting called "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 1328
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1344
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1345
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v21, "action_hide_recents_activity"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    const-string v21, "action_toggle_recents_activity"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    const-string v21, "action_start_enter_animation"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 1361
    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v21, :cond_4

    .line 1362
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v15, v0, [Landroid/widget/LinearLayout;

    .line 1363
    .local v15, "shortCutLayout":[Landroid/widget/LinearLayout;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v14, v0, [Landroid/widget/ImageView;

    .line 1364
    .local v14, "shortCutIcons":[Landroid/widget/ImageView;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 1366
    .local v16, "shortCutTexts":[Landroid/widget/TextView;
    const/16 v22, 0x0

    const v21, 0x7f0f0233

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    .line 1367
    const/16 v22, 0x1

    const v21, 0x7f0f0236

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    .line 1368
    const/16 v22, 0x2

    const v21, 0x7f0f0239

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    .line 1369
    const/16 v22, 0x3

    const v21, 0x7f0f023c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    .line 1371
    const/16 v22, 0x0

    const v21, 0x7f0f0234

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    .line 1372
    const/16 v22, 0x1

    const v21, 0x7f0f0237

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    .line 1373
    const/16 v22, 0x2

    const v21, 0x7f0f023a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    .line 1374
    const/16 v22, 0x3

    const v21, 0x7f0f023d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    .line 1376
    const/16 v22, 0x0

    const v21, 0x7f0f0235

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    .line 1377
    const/16 v22, 0x1

    const v21, 0x7f0f0238

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    .line 1378
    const/16 v22, 0x2

    const v21, 0x7f0f023b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    .line 1379
    const/16 v22, 0x3

    const v21, 0x7f0f023e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1382
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1383
    .local v17, "shortcutAppList":Ljava/lang/String;
    sget-object v21, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    .line 1384
    const/4 v11, 0x0

    .line 1385
    .local v11, "numIcons":I
    const/4 v6, -0x1

    .line 1387
    .local v6, "curFocus":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    .line 1388
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1389
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1390
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v9, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 1392
    .local v13, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_2

    .line 1393
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1394
    .local v19, "shortcutText":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1396
    .local v18, "shortcutIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_1

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 1397
    aget-object v21, v15, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1398
    aget-object v21, v15, v8

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1399
    aget-object v21, v15, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    aget-object v21, v16, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x5a

    const/16 v24, 0x5a

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1404
    aget-object v21, v14, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1405
    aget-object v21, v14, v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1406
    aget-object v21, v14, v8

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1407
    aget-object v21, v14, v8

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1408
    aget-object v21, v14, v8

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1409
    aget-object v21, v14, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->clearFocus()V

    .line 1410
    aget-object v21, v14, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0xff

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1411
    aget-object v21, v14, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1412
    aget-object v21, v14, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    add-int/lit8 v11, v11, 0x1

    .line 1415
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    .line 1416
    aget-object v21, v15, v8

    aget-object v22, v15, v6

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    .line 1417
    aget-object v21, v15, v6

    aget-object v22, v15, v8

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    .line 1419
    :cond_0
    move v6, v8

    .line 1387
    .end local v18    # "shortcutIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "shortcutText":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1422
    :cond_2
    aget-object v21, v15, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1426
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const v21, 0x7f0f0232

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1427
    .local v5, "applicationShortcutLayout":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1433
    .end local v5    # "applicationShortcutLayout":Landroid/widget/LinearLayout;
    .end local v6    # "curFocus":I
    .end local v8    # "i":I
    .end local v11    # "numIcons":I
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v14    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v15    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v16    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v17    # "shortcutAppList":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 1440
    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1486
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStop()V

    .line 1487
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1488
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1490
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onStop is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {p0, v1, v4}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1497
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1498
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1500
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 1503
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1506
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    .line 1510
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 1513
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1515
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 1799
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 1800
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1574
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1575
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 1578
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 1725
    return-void
.end method

.method public performAllTaskViewsDismissed()V
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 1812
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1821
    :cond_0
    return-void
.end method

.method public performDismiss()V
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return-void
.end method

.method public performDismissRecentsToCloseAll(ZZ)V
    .locals 6
    .param p1, "animated"    # Z
    .param p2, "toRight"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1982
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissRecentsToCloseAll is getting called animated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, "blockFinishRunnableAnim":Z
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1986
    const/4 v0, 0x1

    .line 1989
    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_1

    .line 1990
    new-instance v1, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v1, p0, v5, v2, v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1992
    .local v1, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v3, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    invoke-direct {v3, v1, p2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1997
    .end local v1    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 1995
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "forceLaunch"    # Z

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
    .locals 6
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "forceLaunch"    # Z
    .param p3, "blockToEnterFocusedTask"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 800
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "dismissRecentsToFocusedTaskOrHome is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 803
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    .line 806
    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 858
    :cond_1
    :goto_0
    return v2

    .line 819
    :cond_2
    if-nez p3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 830
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_4

    .line 831
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v2, v3

    .line 832
    goto :goto_0

    .line 834
    :cond_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 836
    .local v0, "launchedFromMW":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 852
    goto :goto_0

    .line 855
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v2, v3

    .line 856
    goto :goto_0
.end method

.method public performTaskViewClicked()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 1877
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 1878
    return-void
.end method

.method protected requestFocusNextTask()V
    .locals 0

    .prologue
    .line 2306
    return-void
.end method

.method protected setOppositeLaunchingState(IZ)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "isLaunching"    # Z

    .prologue
    .line 2320
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2243
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2244
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 2245
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2247
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 2249
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 2250
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2251
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    .line 2253
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 2254
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2255
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 2257
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_3

    .line 2258
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2259
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    .line 2262
    :cond_3
    return-void
.end method

.method updateMainRecentsLayout(Z)V
    .locals 6
    .param p1, "allTaskRemoved"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 707
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMainRecentsLayout is getting called : allTaskRemoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz p1, :cond_3

    .line 709
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 717
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_2
    :goto_0
    return-void

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 721
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 728
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 26
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateRecentsTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 474
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v15

    .line 476
    .local v15, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/16 v17, 0x0

    .line 480
    .local v17, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v17

    .line 483
    if-nez v17, :cond_0

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v17

    .line 488
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    if-nez v3, :cond_1

    .line 495
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 498
    :cond_1
    new-instance v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v14}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 499
    .local v14, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 504
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v18

    .line 507
    .local v18, "root":Lcom/android/systemui/recents/model/SpaceNode;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 508
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 510
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v9

    .line 512
    .local v9, "hasTasks":Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v19, v3

    .line 513
    .local v19, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/KioskMode"

    const-string v5, "isTaskManagerAllowed"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v5, v0}, Lcom/android/systemui/recents/RecentsActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 515
    .local v12, "isKioskMode":I
    const/4 v3, -0x1

    if-eq v12, v3, :cond_4

    const/4 v3, 0x1

    if-eq v12, v3, :cond_4

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "isKioskMode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    .line 525
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v9, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 528
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    .local v10, "homeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/high16 v3, 0x10200000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    new-instance v5, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v3, :cond_6

    const v3, 0x7f050077

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v4, :cond_7

    const v4, 0x7f050078

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10, v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 552
    new-instance v3, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    const v4, 0x7f050074

    const v5, 0x7f050076

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v4}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 563
    .local v23, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 564
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v11, v0, :cond_9

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    .line 569
    .local v20, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v24

    .line 570
    .local v24, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 571
    .local v22, "taskCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    .line 572
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    .line 573
    .local v21, "t":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v3, v4, :cond_8

    .line 574
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 564
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 519
    .end local v10    # "homeIntent":Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v22    # "taskCount":I
    .end local v23    # "taskStackCount":I
    .end local v24    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    .line 520
    if-eqz v9, :cond_2

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 525
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 544
    .restart local v10    # "homeIntent":Landroid/content/Intent;
    :cond_6
    const v3, 0x7f050073

    goto/16 :goto_2

    :cond_7
    const v4, 0x7f050075

    goto/16 :goto_3

    .line 571
    .restart local v11    # "i":I
    .restart local v13    # "j":I
    .restart local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v22    # "taskCount":I
    .restart local v23    # "taskStackCount":I
    .restart local v24    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 600
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v22    # "taskCount":I
    .end local v24    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_11

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "launchedWithNoRecentTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_a

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0f024e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 608
    .local v2, "emptyTextView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "need_dark_font"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    .line 609
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    if-eqz v3, :cond_10

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 612
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    move/from16 v25, v0

    sub-float v7, v7, v25

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 627
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 661
    :goto_8
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_16

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_d
    :goto_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-eqz v3, :cond_e

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->checkAssistAppIsInstalled()I

    move-result v16

    .line 693
    .local v16, "mAssistApp":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTextAndIcon(I)V

    .line 698
    .end local v16    # "mAssistApp":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsContainerOnlyMode:Z

    .line 703
    return-void

    .line 608
    .restart local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 614
    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 615
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    move/from16 v25, v0

    sub-float v7, v7, v25

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_7

    .line 640
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_12

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_8

    .line 651
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto/16 :goto_8

    .line 664
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 668
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v3, :cond_17

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "No launchedWithNoRecentTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f050072

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 674
    .local v8, "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_17

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    .end local v8    # "animation":Landroid/view/animation/Animation;
    :cond_17
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f050072

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 684
    .restart local v8    # "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_9
.end method
