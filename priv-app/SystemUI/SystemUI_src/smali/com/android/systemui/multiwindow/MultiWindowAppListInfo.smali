.class public Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.super Ljava/lang/Object;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;,
        Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;
    }
.end annotation


# static fields
.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Recents_MultiWindowAppListInfo"

.field static mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentDate:I

.field private static mDefaultIconSize:I

.field private static final mLock:Ljava/lang/Object;

.field static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;


# instance fields
.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private mAppListImageSize:I

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mDefaultIconSizeForDensity:I

.field private mIsAppListLoaded:Z

.field private mIsUseDefaultTheme:Z

.field private mMultiWindowItemNum:I

.field private mMultiWindowItemNumLand:I

.field private mMultiWindowItemNumPort:I

.field private mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

.field private mShadowAlpha:I

.field private mShadowOfIconY:I

.field private mSupportLegacyTheme:Z

.field private mSupportMultiInstance:Z

.field private mThemeChanged:Z

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private mViewPagerAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private themeBackground:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const/16 v0, 0x30

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSize:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$2;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$2;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v9, 0x7f0c0049

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->DEBUG:Z

    .line 60
    iput-short v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->ESTIMATE_INVALID_VALUE:S

    .line 61
    iput-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    .line 68
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 70
    iput-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 71
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    .line 72
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    .line 82
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    .line 98
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "MultiWindowAppListInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput-object p1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    .line 103
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e047b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowOfIconY:I

    .line 104
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowAlpha:I

    .line 105
    new-instance v4, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumPort:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumLand:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    .line 111
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSize:I

    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v5, v5, 0xa0

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSizeForDensity:I

    .line 113
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    .line 116
    new-instance v4, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v4, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 117
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v7}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "themeVersion":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    .line 120
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 132
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v1, "pkgMngFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "appListUpdateFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    .line 152
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    return-void

    .line 122
    .end local v0    # "appListUpdateFilter":Landroid/content/IntentFilter;
    .end local v1    # "pkgMngFilter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "themePackageName":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    .line 125
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    goto :goto_0

    .line 128
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    goto :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 54
    sput p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 54
    sput-object p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$300()Landroid/database/ContentObserver;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    .locals 6
    .param p1, "launchItem"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .prologue
    const/4 v3, 0x0

    .line 432
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 433
    .local v2, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "addwithcheckduplicate  duplicated item return false!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_0
    return v3

    .line 438
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v3, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Recents_MultiWindowAppListInfo"

    const-string v5, "addwithcheckduplicate activityInfo.name error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 965
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 966
    .local v0, "appListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 967
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 968
    .local v4, "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v2

    .line 969
    .local v2, "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 966
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 974
    .local v1, "appResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 978
    .end local v1    # "appResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    .end local v4    # "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "drs":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 1065
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I
    .param p3, "dpi"    # I

    .prologue
    .line 479
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 483
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 480
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 2

    .prologue
    .line 167
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 1061
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const v11, 0x1080093

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getLauncherLargeIconDensity()I

    move-result v1

    .line 579
    .local v1, "dpi":I
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 582
    .local v0, "cinfo":Landroid/content/pm/ComponentInfo;
    :goto_0
    sget-object v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 584
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 586
    .local v2, "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mDefaultIconSizeForDensity:I

    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    if-ge v9, v10, :cond_2

    .line 587
    const/4 v7, 0x0

    .line 590
    .local v7, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v9, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 595
    :goto_1
    if-eqz v7, :cond_1

    .line 596
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_1

    .line 598
    iget-boolean v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    if-nez v9, :cond_0

    .line 599
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolveTheme(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 602
    :cond_0
    if-nez v2, :cond_1

    .line 603
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v5

    .line 604
    .local v5, "iconId":I
    if-eqz v5, :cond_1

    .line 605
    invoke-direct {p0, v7, v5, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 611
    .end local v5    # "iconId":I
    :cond_1
    if-nez v2, :cond_2

    .line 612
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9, v11, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 616
    .end local v7    # "resources":Landroid/content/res/Resources;
    :cond_2
    const/4 v3, 0x0

    .line 618
    .local v3, "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_3

    .line 619
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 622
    :cond_3
    sget-object v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 623
    .local v8, "themePackageName":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListImageSize:I

    if-ge v9, v10, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-ge v9, v10, :cond_4

    if-eqz v8, :cond_6

    .line 634
    .end local v3    # "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    return-object v3

    .line 579
    .end local v0    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v2    # "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "themePackageName":Ljava/lang/String;
    :cond_5
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 591
    .restart local v0    # "cinfo":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "drawableForLagerDensity":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 592
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    goto :goto_1

    .line 630
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "drawableForLiveIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "themePackageName":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 631
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9, v11, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_7
    move-object v3, v2

    .line 634
    goto :goto_2
.end method

.method private loadIconForResolveTheme(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getLauncherLargeIconDensity()I

    move-result v8

    .line 501
    .local v8, "dpi":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 502
    .local v6, "cinfo":Landroid/content/pm/ComponentInfo;
    sget-object v18, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 504
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 506
    .local v16, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 511
    :goto_0
    const/4 v7, 0x0

    .line 514
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 519
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 524
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    .line 527
    :cond_1
    const/4 v11, 0x0

    .line 528
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_5

    .line 529
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 532
    if-nez v11, :cond_2

    .line 533
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    .line 534
    .local v12, "iconId":I
    if-eqz v12, :cond_2

    if-eqz v16, :cond_2

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 539
    .end local v12    # "iconId":I
    :cond_2
    if-eqz v11, :cond_5

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 542
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v18, v0

    const-string v19, "theme_app_3rd_party_icon"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 543
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 549
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 551
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 553
    .local v10, "height":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 554
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 555
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 556
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 558
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "b":Landroid/graphics/Bitmap;
    move-object/from16 v18, v11

    .line 559
    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 560
    .local v13, "in_bit":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 561
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 562
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 563
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 564
    const/high16 v18, 0x3f400000    # 0.75f

    const/high16 v19, 0x3f400000    # 0.75f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 565
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    neg-int v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 566
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 568
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    sget-object v18, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 573
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "height":I
    .end local v13    # "in_bit":Landroid/graphics/Bitmap;
    .end local v14    # "p":Landroid/graphics/Paint;
    .end local v17    # "width":I
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-object v7

    .line 507
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    .line 508
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 515
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v9

    .line 516
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadAppIconBitmap( "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ) failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 529
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 544
    :catch_2
    move-exception v9

    .line 545
    .restart local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "3rd_party_icon_menu  failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 290
    :cond_0
    return-object v0
.end method

.method private queryResolveInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v1, "launcherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 939
    .local v2, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 942
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 944
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->sInstance:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public addInstalledPackage(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 814
    const/4 v10, 0x0

    .line 869
    :goto_0
    return v10

    .line 816
    :cond_0
    const/4 v9, 0x0

    .line 817
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateSupportedAppList()V

    .line 819
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 820
    .local v3, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 821
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 823
    const/4 v10, 0x1

    goto :goto_0

    .line 827
    .end local v3    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_2
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 829
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v4, "launcherIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const/16 v10, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    invoke-virtual {v7, v4, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 834
    .local v5, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 835
    .local v8, "r":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 838
    .local v0, "addInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_6

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_6

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 839
    .local v6, "metaDataBundle":Landroid/os/Bundle;
    :goto_1
    if-eqz v6, :cond_7

    const-string v10, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_7

    .line 840
    move-object v0, v8

    .line 857
    .end local v6    # "metaDataBundle":Landroid/os/Bundle;
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 858
    const-string v10, "Recents_MultiWindowAppListInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    .line 860
    .restart local v3    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-direct {p0, v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z

    .line 863
    .end local v3    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_5
    if-eqz v0, :cond_3

    .line 864
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 838
    :cond_6
    :try_start_1
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 841
    .restart local v6    # "metaDataBundle":Landroid/os/Bundle;
    :cond_7
    if-eqz v6, :cond_9

    const-string v10, "com.sec.android.support.multiwindow"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v10, :cond_9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v11, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v11, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 843
    :cond_8
    move-object v0, v8

    goto :goto_2

    .line 844
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 845
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    .line 849
    :cond_a
    move-object v0, v8

    goto :goto_2

    .line 851
    .end local v6    # "metaDataBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 853
    const-string v10, "Recents_MultiWindowAppListInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 869
    .end local v0    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public addTemplate(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 21
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "titleChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 982
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v11, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 985
    .local v16, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 986
    .local v14, "r":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_1

    .line 987
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 989
    :cond_1
    if-nez v14, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 990
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 991
    if-nez v14, :cond_2

    .line 992
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 993
    .local v10, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 994
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "r":Landroid/content/pm/ResolveInfo;
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 999
    .end local v10    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v14, :cond_0

    .line 1000
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addTemplate r = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v13, 0x0

    .line 1002
    .local v13, "pos":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 1003
    .local v12, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1004
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1007
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_4
    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-interface {v11, v13, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1013
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "pos":I
    .end local v14    # "r":Landroid/content/pm/ResolveInfo;
    .end local v16    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 1014
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v17, "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1016
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    .line 1017
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 1018
    .restart local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 1019
    .local v9, "item":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1020
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1021
    .local v3, "applicationMetaData":Landroid/os/Bundle;
    :goto_3
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1023
    :cond_7
    const/16 v18, 0x0

    .line 1047
    .end local v3    # "applicationMetaData":Landroid/os/Bundle;
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .end local v17    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    :goto_4
    return v18

    .line 1020
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .restart local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .restart local v17    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 1016
    .end local v9    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1029
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_a
    new-instance v8, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    if-nez p3, :cond_b

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v8, v0, v11, v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1030
    .local v8, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1032
    const/16 v18, 0x0

    goto :goto_4

    .line 1029
    .end local v8    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 1035
    .restart local v8    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_c
    const-string v18, "Recents_MultiWindowAppListInfo"

    const-string v19, "Add new template!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v4

    .line 1037
    .local v4, "flashbarList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    const/4 v15, 0x0

    .line 1039
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 1040
    .restart local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1041
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v18, "Recents_MultiWindowAppListInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Stored Package : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1044
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_d
    const/16 v18, 0x1

    goto :goto_4

    .line 1046
    .end local v4    # "flashbarList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    :cond_e
    const-string v18, "Recents_MultiWindowAppListInfo"

    const-string v19, "template add fail. current running app is null or only have 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v18, 0x0

    goto :goto_4
.end method

.method public createShadowIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x3f733333    # 0.95f

    const/4 v7, 0x0

    .line 1170
    if-nez p1, :cond_0

    move-object v0, v4

    .line 1197
    :goto_0
    return-object v0

    .line 1174
    :cond_0
    iget v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowOfIconY:I

    add-int/2addr v5, p3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1176
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1177
    .local v3, "shadowPaint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1178
    .local v2, "m":Landroid/graphics/Matrix;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1179
    int-to-float v5, p2

    int-to-float v6, p2

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowOfIconY:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1180
    new-instance v5, Landroid/graphics/LightingColorFilter;

    invoke-direct {v5, v9, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1181
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1182
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1183
    iget v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mShadowAlpha:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1192
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1193
    invoke-virtual {v1, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1194
    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    .line 1195
    const/4 v1, 0x0

    .line 1197
    goto :goto_0
.end method

.method public findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 949
    .local v0, "appListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 950
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 951
    .local v4, "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v2

    .line 952
    .local v2, "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 949
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 957
    .local v1, "appResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 961
    .end local v1    # "appResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "flashBarApps":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    .end local v4    # "srcItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDefaultTemplateText(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1091
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1092
    .local v5, "title":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v6, v10

    const-string v8, ""

    aput-object v8, v6, v11

    const-string v8, ""

    aput-object v8, v6, v12

    const-string v8, ""

    aput-object v8, v6, v13

    .line 1093
    .local v6, "titleArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1094
    .local v0, "app":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1095
    .local v4, "size":I
    const/4 v7, 0x0

    .line 1096
    .local v7, "zone":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_8

    .line 1097
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1098
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 1099
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1101
    :cond_0
    if-nez v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 1102
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1103
    if-nez v3, :cond_1

    .line 1104
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1105
    .local v2, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1106
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1109
    .end local v2    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 1110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1111
    .restart local v2    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1112
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1117
    .end local v2    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v3, :cond_7

    .line 1118
    sget-object v8, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    .line 1120
    and-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_5

    .line 1121
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_4

    .line 1122
    aput-object v0, v6, v10

    .line 1096
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1124
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    goto :goto_1

    .line 1126
    :cond_5
    and-int/lit8 v8, v7, 0xc

    if-eqz v8, :cond_3

    .line 1127
    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_6

    .line 1128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    goto :goto_1

    .line 1130
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v13

    goto :goto_1

    .line 1134
    :cond_7
    const/4 v8, 0x0

    .line 1140
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v8

    .line 1137
    :cond_8
    const/4 v1, 0x0

    :goto_3
    array-length v8, v6

    if-ge v1, v8, :cond_9

    .line 1138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move-object v8, v5

    .line 1140
    goto :goto_2
.end method

.method public getFlashBarIntent(I)Ljava/util/List;
    .locals 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v13, 0x10200000

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    .line 639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-gez p1, :cond_1

    .line 641
    const-string v8, "Recents_MultiWindowAppListInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFlashBarIntent: invalid index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    :goto_0
    return-object v2

    .line 645
    :cond_1
    const/4 v4, 0x0

    .line 646
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .line 647
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 648
    .local v3, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v4

    .line 650
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_6

    .line 651
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 652
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 655
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :goto_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 661
    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 662
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 666
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    if-eqz v8, :cond_3

    .line 667
    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 669
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 658
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 664
    :cond_5
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 672
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 673
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 674
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 675
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v8, :cond_7

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 676
    :cond_7
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    :goto_4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 682
    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 683
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    :goto_5
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportMultiInstance:Z

    if-eqz v8, :cond_8

    .line 688
    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 690
    :cond_8
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 691
    .local v7, "windowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 692
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 693
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 679
    .end local v7    # "windowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 685
    :cond_a
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_5
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 447
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 448
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 449
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 451
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 472
    .end local v0    # "density":I
    :goto_0
    return v0

    .line 456
    .restart local v0    # "density":I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 472
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 458
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 460
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 462
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 464
    goto :goto_0

    .line 466
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 468
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 456
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getMultiWindowItemNum()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    return v0
.end method

.method public getTotalPageNum()I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "pageCnt":I
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    div-int v0, v1, v2

    .line 273
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 277
    :cond_0
    return v0
.end method

.method public getViewPagerAppListCnt()I
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    return-object v0
.end method

.method public isAppListLoaded()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    return v0
.end method

.method public declared-synchronized loadMultiWindowAppList()V
    .locals 22

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    const-string v19, "Recents_MultiWindowAppListInfo"

    const-string v20, "loadMultiWindowAppList"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    move/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_1

    .line 428
    :cond_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    const/16 v19, 0x1

    :try_start_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsAppListLoaded:Z

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sput v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateSupportedAppList()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 334
    sget-object v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 335
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const-string v19, "package"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 337
    .local v13, "mIPm":Landroid/content/pm/IPackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v11, "launcherIntent":Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/16 v19, 0x40

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 342
    .local v12, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v16, "r":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 345
    .local v4, "addInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_2

    .line 346
    const/4 v10, 0x0

    .line 348
    .local v10, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :try_start_2
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 349
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 350
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_3

    .line 351
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 353
    :cond_3
    if-eqz v5, :cond_6

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 355
    .local v14, "metaDataBundle":Landroid/os/Bundle;
    :goto_1
    const/16 v18, 0x0

    .line 356
    .local v18, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 357
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 359
    :cond_4
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 360
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 362
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : SKIP package="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 377
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    .end local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 378
    .local v6, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 379
    :try_start_3
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    if-eqz v4, :cond_2

    .line 384
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v10, :cond_c

    new-instance v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)V

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 324
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v11    # "launcherIntent":Landroid/content/Intent;
    .end local v12    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 353
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .restart local v11    # "launcherIntent":Landroid/content/Intent;
    .restart local v12    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "mIPm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_6
    :try_start_4
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_1

    .line 364
    .restart local v14    # "metaDataBundle":Landroid/os/Bundle;
    .restart local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v18, :cond_8

    const-string v19, "hideAppFromMultiWindowList"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 365
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : SKIP WINDOW_STYLE_HIDE_APP_FROM_MULTIWINDOWLIST activity="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    :cond_8
    if-eqz v14, :cond_a

    const-string v19, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 369
    :cond_9
    move-object/from16 v4, v16

    goto/16 :goto_2

    .line 370
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v19

    if-eqz v19, :cond_2

    .line 375
    :cond_b
    move-object/from16 v4, v16

    goto/16 :goto_2

    .line 386
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    .end local v18    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    :try_start_5
    new-instance v19, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_3

    .line 391
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_d
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "launcherIntent":Landroid/content/Intent;
    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v11    # "launcherIntent":Landroid/content/Intent;
    const-string v19, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const/16 v19, 0x40

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 395
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 396
    .restart local v16    # "r":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 397
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v19, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v19, :cond_e

    .line 401
    :try_start_6
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 402
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 403
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_f

    .line 404
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 406
    :cond_f
    if-eqz v5, :cond_10

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 407
    .restart local v14    # "metaDataBundle":Landroid/os/Bundle;
    :goto_5
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 408
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 409
    if-eqz v14, :cond_e

    const-string v19, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 410
    new-instance v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V

    .line 411
    .local v9, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addwithcheckduplicate(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 413
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .end local v14    # "metaDataBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .line 414
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v19, "Recents_MultiWindowAppListInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 406
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_10
    :try_start_8
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 420
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "r":Landroid/content/pm/ResolveInfo;
    :cond_11
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 424
    .local v17, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 426
    .restart local v9    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method

.method public makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 7
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x8000000

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 701
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 702
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v4, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v5, :cond_4

    .line 705
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 716
    :cond_2
    :goto_1
    return-void

    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_3
    move-object v0, v1

    .line 701
    goto :goto_0

    .line 707
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_2

    .line 709
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v4, :cond_6

    const-string v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v5, :cond_2

    const-string v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 711
    :cond_7
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pkgManagerList(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "actionStr":Ljava/lang/String;
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 722
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 724
    .local v4, "bReplace":Z
    if-nez v4, :cond_7

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 726
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 728
    const/4 v13, 0x1

    .line 808
    .end local v4    # "bReplace":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :goto_0
    return v13

    .line 731
    :cond_0
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 733
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_REMOVE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 735
    .restart local v4    # "bReplace":Z
    if-nez v4, :cond_7

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 737
    .restart local v9    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 739
    const/4 v13, 0x1

    goto :goto_0

    .line 742
    .end local v4    # "bReplace":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 744
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 746
    .restart local v9    # "packageName":Ljava/lang/String;
    sget-object v13, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 747
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const-string v13, "package"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 748
    .local v7, "mIPm":Landroid/content/pm/IPackageManager;
    const/4 v8, -0x1

    .line 750
    .local v8, "packageChangedState":I
    if-eqz v12, :cond_2

    .line 752
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    invoke-interface {v7, v9, v13}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 756
    :cond_2
    :goto_1
    const/4 v13, 0x3

    if-eq v8, v13, :cond_3

    const/4 v13, 0x2

    if-ne v8, v13, :cond_4

    .line 758
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 760
    const/4 v13, 0x1

    goto :goto_0

    .line 762
    :cond_4
    if-eqz v8, :cond_5

    const/4 v13, 0x1

    if-ne v8, v13, :cond_6

    .line 764
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 766
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 769
    :cond_6
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "android.intent.action.PACKAGE_CHANGED : state is invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v7    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v8    # "packageChangedState":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 771
    :cond_8
    const-string v13, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 774
    .restart local v9    # "packageName":Ljava/lang/String;
    const-string v13, "Recents_MultiWindowAppListInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "android.intent.action.PACKAGE_REPLACED packageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 777
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 778
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 780
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_a
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 788
    :cond_b
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 789
    .local v10, "pkgList":[Ljava/lang/String;
    if-eqz v10, :cond_c

    array-length v13, v10

    if-nez v13, :cond_d

    .line 791
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 794
    :cond_d
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 795
    .local v3, "available":Z
    if-eqz v3, :cond_f

    .line 796
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_f

    aget-object v11, v2, v5

    .line 797
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateInstalledPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 798
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->removeInstalledPackage(Ljava/lang/String;)Z

    .line 799
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->addInstalledPackage(Ljava/lang/String;)Z

    .line 796
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 803
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v11    # "pkgName":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    .line 804
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 806
    .end local v3    # "available":Z
    .end local v10    # "pkgList":[Ljava/lang/String;
    :cond_10
    const-string v13, "Recents_MultiWindowAppListInfo"

    const-string v14, "RECEIVER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 753
    .restart local v7    # "mIPm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "packageChangedState":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method

.method public releaseAppListBitmap()V
    .locals 5

    .prologue
    .line 1224
    const-string v3, "Recents_MultiWindowAppListInfo"

    const-string v4, "releaseAppListBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 1227
    .local v2, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1228
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1229
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1231
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1234
    .end local v2    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_1
    return-void
.end method

.method public removeInstalledPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 874
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 901
    :goto_0
    return v6

    .line 878
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v4, "rmovedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    const/4 v2, 0x0

    .line 880
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 882
    .local v3, "resolveInfo2":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 883
    .local v1, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 884
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 885
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 886
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 887
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo2()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 888
    if-eqz v3, :cond_1

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 889
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 895
    .end local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 896
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 897
    .restart local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 901
    .end local v1    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method public removeTemplate(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1052
    if-lez p1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 1054
    .local v0, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1058
    .end local v0    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :goto_0
    return-void

    .line 1056
    :cond_0
    const-string v1, "Recents_MultiWindowAppListInfo"

    const-string v2, "removeTemplate : index == ESTIMATE_INVALID_VALUE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetThemeManager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1210
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mSupportLegacyTheme:Z

    if-eqz v1, :cond_1

    .line 1211
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "themePackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1213
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    .line 1217
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v1}, Lcom/samsung/android/theme/SThemeManager;->resetTheme()V

    .line 1218
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mThemeChanged:Z

    .line 1220
    .end local v0    # "themePackageName":Ljava/lang/String;
    :cond_1
    return-void

    .line 1215
    .restart local v0    # "themePackageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIsUseDefaultTheme:Z

    goto :goto_0
.end method

.method public updateAppListOrder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 294
    new-instance v2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;-><init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;)V

    .line 301
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    .local v0, "allAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v3, "frequentlyAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 307
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 308
    .local v5, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    iget-object v6, v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 309
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 310
    .local v1, "appName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v6, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 311
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    .end local v1    # "appName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v5    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowTrayInfoUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v6, v3}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getSortingList(Ljava/util/List;)Ljava/util/List;

    .line 318
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 319
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    return-void
.end method

.method public updateInstalledPackage(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 906
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 907
    const/4 v9, 0x0

    .line 931
    :cond_0
    return v9

    .line 910
    :cond_1
    const/4 v9, 0x0

    .line 911
    .local v9, "result":Z
    const/4 v8, 0x0

    .line 912
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 914
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mViewPagerAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 915
    .local v5, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v6

    .line 916
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 917
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 918
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 919
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 920
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 921
    const-string v10, "Recents_MultiWindowAppListInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateInstalledPackage() : item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v5, v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->updateResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 923
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 924
    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemTitle()V

    .line 925
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public updateMultiWindowItemNum(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 487
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 488
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumPort:I

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNumLand:I

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mMultiWindowItemNum:I

    goto :goto_0
.end method

.method public updateSupportedAppList()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    .line 282
    return-void
.end method

.method public updateTime()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "calendar":Ljava/util/Calendar;
    sget v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v2

    .line 188
    .local v2, "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemTitle()V

    .line 189
    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "item":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sput v3, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I

    .line 193
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
