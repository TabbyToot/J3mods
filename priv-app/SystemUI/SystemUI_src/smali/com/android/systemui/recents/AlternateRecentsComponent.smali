.class public Lcom/android/systemui/recents/AlternateRecentsComponent;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HIDE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_hide_recents_activity"

.field public static final ACTION_PROXY_NOTIFY_RECENTS_VISIBLITY_TO_OWNER:Ljava/lang/String; = "action_notify_recents_visibility_change"

.field public static final ACTION_START_ENTER_ANIMATION:Ljava/lang/String; = "action_start_enter_animation"

.field public static final ACTION_START_ENTER_ANIMATION_SUB_RECENTS:Ljava/lang/String; = "action_start_enter_animation_sub_recents"

.field public static final ACTION_TOGGLE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_toggle_recents_activity"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field public static final EXTRA_DISPLAYIDS:Ljava/lang/String; = "recents.displayids"

.field public static final EXTRA_FROM_APP_FULL_SCREENSHOT:Ljava/lang/String; = "recents.thumbnail"

.field public static final EXTRA_FROM_APP_THUMBNAIL:Ljava/lang/String; = "recents.animatingWithThumbnail"

.field public static final EXTRA_FROM_HOME:Ljava/lang/String; = "recents.triggeredOverHome"

.field public static final EXTRA_FROM_MULTI_WINDOW_RECENT:Ljava/lang/String; = "recents.triggeredOverMultiWindowRecent"

.field public static final EXTRA_FROM_SEARCH_HOME:Ljava/lang/String; = "recents.triggeredOverSearchHome"

.field public static final EXTRA_FROM_TASK_ID:Ljava/lang/String; = "recents.activeTaskId"

.field public static final EXTRA_RECENTS_VISIBILITY:Ljava/lang/String; = "recentsVisibility"

.field public static final EXTRA_TRIGGERED_FROM_ALT_TAB:Ljava/lang/String; = "recents.triggeredFromAltTab"

.field public static final EXTRA_TRIGGERED_FROM_HOME_KEY:Ljava/lang/String; = "recents.triggeredFromHomeKey"

.field public static final EXTRA_TRIGGERED_FROM_LAUNCH_TASK_ON_RECENTS:Ljava/lang/String; = "recents.triggeredFromLaunchTaskOnRecents"

.field private static final SHOW_HELP_POPUP:I = 0x1

.field private static final SHOW_LOCK_TOAST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "Recents_AlternateRecentsComponent"

.field static mLock:Ljava/lang/Object; = null

.field static mRecentsVisible:Z = false

.field static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan; = null

.field static sInstanceLoadPlans:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;",
            ">;"
        }
    .end annotation
.end field

.field static final sMinToggleDelay:I = 0x15e

.field public static final sRecentsActivity:Ljava/lang/String; = "com.android.systemui.recents.RecentsActivity"

.field public static final sRecentsAlternateProxyService:Ljava/lang/String; = "com.android.systemui.recents.RecentsAlternateProxyService"

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks; = null

.field public static final sRecentsPackage:Ljava/lang/String; = "com.android.systemui"

.field public static final sSubRecentsActivity:Ljava/lang/String; = "com.android.systemui.recents.SubRecentsActivity"

.field static final sToggleRecentsAction:Ljava/lang/String; = "com.android.systemui.recents.SHOW_RECENTS"


# instance fields
.field private DELAY_SHOW_RECENTMENU_HELPPOPUP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

.field mAlternateServiceConnected:Z

.field mBootCompleted:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

.field private mHelpHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field private mMainStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

.field private mRecentHelpDialog:Landroid/app/AlertDialog;

.field mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

.field private mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

.field mStatusBarHeight:I

.field mSubConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mSubScreenOnOffReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;

.field private mSubStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowRect:Landroid/graphics/Rect;

.field private misAvailableHelpHub:Z

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLock:Ljava/lang/Object;

    .line 278
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    .line 294
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    .line 303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    .line 306
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 327
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    .line 331
    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 342
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mMainStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    .line 343
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSubStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    .line 1821
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$11;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    .line 1914
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$12;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    .line 347
    invoke-static {p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 348
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "AlternateRecentsComponent Constructor is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    .line 350
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    .line 351
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    .line 360
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 367
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    .line 368
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v8, "multiUserFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 374
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 381
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/AlternateRecentsComponent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/AlternateRecentsComponent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 1541
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1542
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1543
    return-object v0
.end method

.method public static consumeInstanceLoadPlan(I)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 1548
    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1549
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 1550
    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    return-object v0
.end method

.method private getHelpVersionCode()I
    .locals 6

    .prologue
    .line 1838
    const/4 v1, 0x1

    .line 1841
    .local v1, "helpVersionCode":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1842
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1846
    const/4 v1, 0x1

    .line 1869
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v3, "Recents_AlternateRecentsComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHelpVersionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    return v1

    .line 1848
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1853
    const/4 v1, 0x2

    goto :goto_0

    .line 1855
    :cond_2
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1863
    const/4 v1, 0x3

    goto :goto_0

    .line 1865
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1558
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1875
    if-nez p0, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return v5

    .line 1878
    :cond_1
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1879
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 1880
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 1881
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 1882
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 1883
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 1884
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 1886
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 1887
    const-string v6, "Recents_AlternateRecentsComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_2
    const/4 v0, 0x0

    .line 1891
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 1883
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1884
    goto :goto_2
.end method

.method private makeRecentHelpPopup()V
    .locals 13

    .prologue
    const v12, 0x7f0f036c

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v11, 0x1

    .line 1678
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1681
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHelpVersionCode()I

    move-result v2

    .line 1683
    .local v2, "helpVersionCode":I
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1684
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_2

    .line 1685
    const v7, 0x7f0400c6

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1686
    .local v5, "mRecentPanelLayout":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1687
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    :cond_0
    :goto_0
    const/4 v6, 0x5

    .line 1735
    .local v6, "theme":I
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1736
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_9

    .line 1737
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a04c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1744
    .local v1, "helpTitle":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    .line 1747
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$9;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$9;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1766
    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-eqz v7, :cond_1

    if-eq v2, v11, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1768
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$10;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent$10;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1811
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1812
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 1813
    .local v4, "kgm":Landroid/app/KeyguardManager;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1814
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1819
    :goto_2
    return-void

    .line 1691
    .end local v1    # "helpTitle":Ljava/lang/String;
    .end local v4    # "kgm":Landroid/app/KeyguardManager;
    .end local v5    # "mRecentPanelLayout":Landroid/view/View;
    .end local v6    # "theme":I
    :cond_2
    const v7, 0x7f0400c5

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1692
    .restart local v5    # "mRecentPanelLayout":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1693
    const v7, 0x7f0f036b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1695
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1700
    .end local v5    # "mRecentPanelLayout":Landroid/view/View;
    :cond_3
    const v7, 0x7f0400c4

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1701
    .restart local v5    # "mRecentPanelLayout":Landroid/view/View;
    const v7, 0x7f0f036a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    .line 1703
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/systemui/recents/AlternateRecentsComponent$8;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$8;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1711
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_4

    .line 1712
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1714
    :cond_4
    const v7, 0x7f0f0369

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1717
    .local v0, "helpText":Landroid/widget/TextView;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_5

    .line 1718
    const v7, 0x7f0a04be

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1721
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForATT:Z

    if-eqz v7, :cond_6

    .line 1722
    const v7, 0x7f0a04c1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1725
    :cond_6
    if-eq v2, v11, :cond_7

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-nez v7, :cond_8

    .line 1726
    :cond_7
    const v7, 0x7f0a04c0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1729
    :cond_8
    const v7, 0x7f0a04bd

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1739
    .end local v0    # "helpText":Landroid/widget/TextView;
    .restart local v6    # "theme":I
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a04c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "helpTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 1742
    .end local v1    # "helpTitle":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a04bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "helpTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 1816
    .restart local v4    # "kgm":Landroid/app/KeyguardManager;
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 1517
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "notifyVisibilityChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    sput-boolean p2, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsVisible:Z

    .line 1525
    const-string v1, "action_notify_recents_visibility_change"

    invoke-static {p0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1527
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1528
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1530
    return-void
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 1532
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 1533
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 1535
    :cond_0
    return-void
.end method


# virtual methods
.method public bindToRecentsService()V
    .locals 5

    .prologue
    .line 417
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "bindToRecentsService is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 421
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/recents/RecentsAlternateProxyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 423
    return-void
.end method

.method configurationChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    .line 881
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsWindow;->configurationChanged()V

    .line 885
    :cond_0
    return-void
.end method

.method public dismissHelpPopup()V
    .locals 0

    .prologue
    .line 1668
    return-void
.end method

.method getHomeTransitionActivityOptions(ZI)Landroid/app/ActivityOptions;
    .locals 5
    .param p1, "fromSearchHome"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 1092
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "getHomeTransitionActivityOptions is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mMainStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    .line 1100
    .local v0, "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x7f050063

    const v3, 0x7f050064

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x7f050061

    const v3, 0x7f050062

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ZI)Landroid/app/ActivityOptions;
    .locals 20
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "isLandscape"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 1119
    const-string v4, "Recents_AlternateRecentsComponent"

    const-string v6, "getThumbnailTransitionActivityOptions is getting called"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v17, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v17 .. v17}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1122
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v19

    .line 1124
    .local v19, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v19, :cond_3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_3

    .line 1125
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1126
    .local v18, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 1127
    .local v16, "toHeaderWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v15, v4

    .line 1128
    .local v15, "toHeaderHeight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1133
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 1140
    .local v13, "isOneHandOperationEnabled":I
    const/4 v4, 0x1

    if-eq v13, v4, :cond_0

    .line 1141
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1142
    .local v12, "c":Landroid/graphics/Canvas;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 1145
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1154
    .end local v12    # "c":Landroid/graphics/Canvas;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mMainStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    .line 1156
    .local v11, "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1160
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 1161
    .local v14, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v14, :cond_1

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x4000000

    invoke-virtual {v14, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1171
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static/range {v4 .. v11}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 1183
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    .end local v13    # "isOneHandOperationEnabled":I
    .end local v14    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v15    # "toHeaderHeight":I
    .end local v16    # "toHeaderWidth":I
    .end local v18    # "toTaskRect":Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 1176
    .restart local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v11    # "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    .restart local v13    # "isOneHandOperationEnabled":I
    .restart local v14    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "toHeaderHeight":I
    .restart local v16    # "toHeaderWidth":I
    .restart local v18    # "toTaskRect":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v6, 0x7f05005f

    const v7, 0x7f050060

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v7, v8, v11}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_0

    .line 1183
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    .end local v13    # "isOneHandOperationEnabled":I
    .end local v14    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v15    # "toHeaderHeight":I
    .end local v16    # "toHeaderWidth":I
    .end local v18    # "toTaskRect":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "runningTaskId"    # I
    .param p4, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1189
    const-string v5, "Recents_AlternateRecentsComponent"

    const-string v6, "getThumbnailTransitionTransform is getting called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v2, 0x0

    .line 1192
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1193
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 1195
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1196
    .local v3, "taskCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1197
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1198
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    .line 1199
    move-object v2, v1

    .line 1200
    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1205
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 1207
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1211
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 1212
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1214
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v5

    .line 1196
    .restart local v0    # "i":I
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "taskCount":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 1072
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "getUnknownTransitionActivityOptions is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mMainStartedListener:Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;

    .line 1081
    .local v0, "listener":Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/AlternateRecentsComponent$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x7f050065

    const v3, 0x7f050066

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method handleShowToast()V
    .locals 3

    .prologue
    .line 1900
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1904
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->toast:Landroid/widget/Toast;

    .line 1908
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1910
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1911
    return-void

    .line 1904
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x104069f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method hideRecents(ZZ)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 571
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "hideRecents"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 574
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    :cond_1
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "onHideRecents is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v3, "action_hide_recents_activity"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "recents.triggeredFromAltTab"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    const-string v2, "recents.triggeredFromHomeKey"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 595
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnLongPressHome:Z

    if-nez v2, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 597
    :cond_3
    return-void
.end method

.method public initInSeperatedProcess()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 473
    return-void
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1895
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBootCompleted(Z)V
    .locals 3
    .param p1, "seperatedProcess"    # Z

    .prologue
    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    .line 429
    if-eqz p1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on onBootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on onBootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 845
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->configurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on configurationChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on configurationChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$7;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onHideRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on hideRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on hideRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$3;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreloadRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onPreloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on preloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on preloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$5;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onShowNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "onShowNextAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowRelativeAffiliatedTask(Z)V

    goto :goto_0
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 2

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "showRelativeAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowRelativeAffiliatedTask(Z)V

    goto :goto_0
.end method

.method public onShowRecents(Z)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onShowRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->showRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on showRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on showRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$2;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onShowRelativeAffiliatedTask(Z)V
    .locals 4
    .param p1, "showNextTask"    # Z

    .prologue
    .line 726
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 727
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->showRelativeAffiliatedTask(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException on showRelativeAffiliatedTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected mAlternateService on showRelativeAffiliatedTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$6;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 395
    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "onStart"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->initializeCurve()V

    .line 401
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    .line 405
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 406
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 407
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 408
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 409
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 410
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 411
    iput-boolean v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 412
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 413
    return-void
.end method

.method public onToggleRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onToggleRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_1

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->toggleRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on toggleRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on toggleRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$4;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method preloadRecents()V
    .locals 3

    .prologue
    .line 698
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "preloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 715
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 716
    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 718
    return-void
.end method

.method reloadHeaderBarLayout(Z)V
    .locals 12
    .param p1, "reloadWidget"    # Z

    .prologue
    .line 889
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "reloadHeaderBarLayout is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 891
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 892
    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    .line 893
    const v0, 0x1050012

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    .line 894
    const v0, 0x1050014

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    .line 903
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 905
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 906
    if-eqz p1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 915
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_7

    .line 916
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 925
    :goto_4
    new-instance v8, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 927
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeAllViewsInLayout()V

    .line 931
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 933
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-result-object v6

    .line 934
    .local v6, "algo":Lcom/android/systemui/recents/views/LayoutAlgorithm;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 935
    .local v10, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 936
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 937
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 938
    .local v11, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0e0321

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 944
    .local v9, "taskBarHeight":I
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 945
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 958
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 962
    return-void

    .line 913
    .end local v6    # "algo":Lcom/android/systemui/recents/views/LayoutAlgorithm;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskBarHeight":I
    .end local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_3
    iget v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 916
    :cond_5
    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    goto/16 :goto_3

    .line 919
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :cond_8
    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    goto :goto_7

    .line 951
    .restart local v6    # "algo":Lcom/android/systemui/recents/views/LayoutAlgorithm;
    .restart local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v9    # "taskBarHeight":I
    .restart local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .restart local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_b

    .line 952
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 955
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    goto :goto_5
.end method

.method reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 980
    return-void
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 1509
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "setRecentsComponentCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    sput-object p1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 1511
    return-void
.end method

.method public showRecentHelpPopup()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1632
    const-string v10, "Recents_AlternateRecentsComponent"

    const-string v11, "showRecentHelpPopup"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "recent_menukey_dialog_do_not_show"

    const/4 v12, -0x2

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_3

    move v4, v8

    .line 1635
    .local v4, "isChecked":Z
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    move v5, v8

    .line 1637
    .local v5, "isMultiWindowEnabled":Z
    :goto_1
    if-nez v4, :cond_5

    if-nez v5, :cond_0

    .line 1642
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1643
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v7, :cond_6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1646
    .local v3, "info":Landroid/content/pm/UserInfo;
    :goto_2
    if-eqz v3, :cond_2

    .line 1647
    iput-boolean v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 1648
    const-string v6, "com.samsung.helphub"

    .line 1649
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 1652
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1653
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1654
    iput-boolean v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 1660
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 1661
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->makeRecentHelpPopup()V

    .line 1662
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    invoke-static {v10, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    iget v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    int-to-long v10, v10

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1664
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v7    # "userManager":Landroid/os/UserManager;
    :goto_3
    return-void

    .end local v4    # "isChecked":Z
    .end local v5    # "isMultiWindowEnabled":Z
    :cond_3
    move v4, v9

    .line 1633
    goto :goto_0

    .restart local v4    # "isChecked":Z
    :cond_4
    move v5, v9

    .line 1635
    goto :goto_1

    .line 1638
    .restart local v5    # "isMultiWindowEnabled":Z
    :cond_5
    const-string v8, "Recents_AlternateRecentsComponent"

    const-string v9, "InformDialog isChecked"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1643
    .restart local v7    # "userManager":Landroid/os/UserManager;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method showRecents(Z)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 518
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "showRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 520
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 21
    .param p1, "showNextTask"    # Z

    .prologue
    .line 747
    const-string v17, "Recents_AlternateRecentsComponent"

    const-string v18, "showRelativeAffiliatedTask is getting called"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 749
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 750
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 751
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    .line 754
    .local v11, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 758
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v10, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 763
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 764
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 765
    .local v15, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 766
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 767
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 768
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_3

    .line 769
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 770
    .local v12, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 771
    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 773
    .local v4, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_4

    .line 774
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 775
    .local v16, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f05006c

    const v19, 0x7f05006b

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 784
    :goto_2
    if-eqz v16, :cond_2

    .line 785
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 787
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 793
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_3
    if-nez v15, :cond_7

    .line 794
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_0

    .line 795
    if-eqz p1, :cond_6

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006a

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 779
    .restart local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v12    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 780
    .restart local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f05006f

    const v19, 0x7f05006e

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_2

    .line 768
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 800
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006d

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 809
    :cond_7
    iget-boolean v0, v15, Lcom/android/systemui/recents/model/Task;->isActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 813
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;I)V
    .locals 7
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromSearchHome"    # Z
    .param p5, "fromThumbnail"    # Z
    .param p6, "vr"    # Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .param p7, "displayId"    # I

    .prologue
    .line 1368
    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAlternateRecentsActivity with arg is getting called. displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1372
    const-string v4, "Recents_AlternateRecentsComponent"

    const-string v5, "UserSetup is not Completed. So return"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :goto_0
    return-void

    .line 1428
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez p4, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 1429
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 1430
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 1431
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_5

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_2
    iput v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 1432
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 1433
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 1434
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 1435
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 1436
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 1439
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1446
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1447
    .local v3, "realTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_3

    .line 1448
    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1449
    .local v2, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1451
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    .line 1452
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 1458
    .end local v2    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v4, :cond_6

    .line 1459
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsWindow;->show()V

    .line 1460
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRecentHelpPopup()V

    .line 1461
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    goto :goto_0

    .line 1428
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "realTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1431
    :cond_5
    const/4 v4, -0x1

    goto :goto_2

    .line 1493
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "realTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_6
    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    if-eqz p2, :cond_7

    .line 1496
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    goto/16 :goto_0

    .line 1498
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method startRecentsActivity()V
    .locals 4

    .prologue
    .line 1048
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "startRecentsActivity is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 1051
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1052
    .local v0, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1063
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 1066
    :cond_1
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 1221
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 30
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I

    .prologue
    .line 1225
    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecentsActivity() : isTopTaskHome="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v26

    .line 1228
    .local v26, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    .line 1241
    sget-object v5, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1242
    :try_start_0
    sget-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1253
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    sget-object v5, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    move-object/from16 v0, v26

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZII)V

    .line 1256
    sget-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 1266
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    move/from16 v0, p2

    invoke-virtual {v4, v6, v5, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    move-result-object v13

    .line 1270
    .local v13, "stackVr":Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_6

    const/16 v23, 0x1

    .line 1271
    .local v23, "hasRecentTasks":Z
    :goto_1
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    if-eqz v23, :cond_7

    const/16 v29, 0x1

    .line 1288
    .local v29, "useThumbnailTransition":Z
    :goto_2
    if-eqz v29, :cond_1

    .line 1290
    new-instance v25, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1291
    .local v25, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1292
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1293
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 1294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1298
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v22

    .line 1303
    .local v22, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ZI)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 1305
    .local v9, "opts":Landroid/app/ActivityOptions;
    if-eqz v9, :cond_8

    .line 1306
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;I)V

    .line 1322
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    .end local v22    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v25    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    :cond_1
    :goto_3
    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecentsActivity() : useThumbnailTransition="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-nez v29, :cond_4

    .line 1326
    if-eqz v23, :cond_a

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v24

    .line 1330
    .local v24, "homeActivityPackage":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1331
    .local v27, "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    const/16 v28, 0x0

    .line 1332
    .local v28, "searchWidgetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v27

    .line 1338
    :goto_4
    if-eqz v27, :cond_2

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 1339
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 1342
    :cond_2
    const/4 v11, 0x0

    .line 1343
    .local v11, "fromSearchHome":Z
    if-eqz v24, :cond_3

    if-eqz v28, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1345
    const/4 v11, 0x1

    .line 1348
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHomeTransitionActivityOptions(ZI)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 1349
    .restart local v9    # "opts":Landroid/app/ActivityOptions;
    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;I)V

    .line 1360
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    .end local v11    # "fromSearchHome":Z
    .end local v24    # "homeActivityPackage":Ljava/lang/String;
    .end local v27    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v28    # "searchWidgetPackage":Ljava/lang/String;
    :cond_4
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 1361
    return-void

    .line 1253
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v13    # "stackVr":Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .end local v23    # "hasRecentTasks":Z
    .end local v29    # "useThumbnailTransition":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1254
    :cond_5
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1270
    .restart local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v13    # "stackVr":Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1271
    .restart local v23    # "hasRecentTasks":Z
    :cond_7
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1311
    .restart local v9    # "opts":Landroid/app/ActivityOptions;
    .restart local v22    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v25    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v29    # "useThumbnailTransition":Z
    :cond_8
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 1336
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    .end local v22    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v25    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v24    # "homeActivityPackage":Ljava/lang/String;
    .restart local v27    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v28    # "searchWidgetPackage":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v27

    goto :goto_4

    .line 1354
    .end local v24    # "homeActivityPackage":Ljava/lang/String;
    .end local v27    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v28    # "searchWidgetPackage":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 1355
    .restart local v9    # "opts":Landroid/app/ActivityOptions;
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v9

    move-object/from16 v20, v13

    move/from16 v21, p3

    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;I)V

    goto :goto_5
.end method

.method toggleRecents()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 639
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "toggleRecents"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 642
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 644
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 656
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 652
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Failed to launch RecentAppsIntent"

    invoke-static {v2, v1}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 10

    .prologue
    .line 987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x15e

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 994
    .local v5, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 996
    .local v2, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v4, 0x0

    .line 997
    .local v4, "subTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 998
    .local v3, "isTopTaskSubHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x0

    .line 1004
    .local v1, "isSubRecentsTopMost":Z
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v6, v5, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eqz v1, :cond_5

    .line 1007
    :cond_3
    const-string v6, "Recents_AlternateRecentsComponent"

    const-string v7, "toggleRecentsActivity ->Recent is on the Top so dismiss it"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v6, :cond_4

    .line 1010
    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsWindow:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 1026
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    goto :goto_0

    .line 1014
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v7, "action_toggle_recents_activity"

    invoke-static {v6, v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1022
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1041
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method
