.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static final DUAL_LCD:I = 0x2

.field public static final MULTIWINDOWFULLPANEL:I = 0x2

.field public static final MULTIWINDOWHALFPANEL:I = 0x3

.field public static final NOT_FOLDER:I = 0x0

.field public static final RECENTPANEL:I = 0x1

.field public static final SINGLE_LCD:I = 0x1

.field public static final SVELTE_DISABLE_CACHE:I = 0x2

.field public static final SVELTE_DISABLE_LOADING:I = 0x3

.field public static final SVELTE_LIMIT_CACHE:I = 0x1

.field public static final SVELTE_NONE:I

.field private static mFolderTypeFeature:I

.field private static mFolderTypeFeatureChecked:Z

.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field protected static final sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field static sPrevConfigurationHashCode:I

.field static sPrevConfigurationHashCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public closeAllButtonSpaceHeightPx:I

.field public closeAllButtonVisibility:Z

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public doNotDrawTaskViewHeader:Z

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isFullScreen:Z

.field public isLandscape:Z

.field public isScreenOff:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromCoupledTask:Z

.field public launchedFromHome:Z

.field public launchedFromMultiWindowRecent:Z

.field public launchedFromSearchHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field mCurrentActivity:I

.field mDisplayId:I

.field public mIsCloseProcessingBtnClicked:Z

.field public mIsContainerOnlyMode:Z

.field public mIsMobileKeyboardAttached:Z

.field public mIsMultiWindowEnabled:Z

.field public mIsPrivateModeEnabled:Z

.field public mIsUPSMEnabled:Z

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field recentScrollBooster:Landroid/os/DVFSHelper;

.field recentsHiddenCompleted:Z

.field public rotation:I

.field public searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHeight:I

.field public taskViewHighlightPx:I

.field public taskViewMarginTop:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public taskViewWidth:I

.field public topTaskInitialScrollUpOffset:F

.field public topTaskInitialScrollUpOffsetOnMultiWindow:F

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public useHardwareLayers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCodes:Landroid/util/SparseArray;

    .line 222
    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    .line 223
    sput-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 116
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 192
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    .line 211
    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    .line 212
    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsContainerOnlyMode:Z

    .line 244
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 248
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 250
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    const-string v0, "RECENT_SCROLL"

    invoke-static {p1, v0}, Landroid/os/DVFSHelper;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    .line 255
    return-void
.end method

.method public static folderTypeFeature(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z

    if-nez v1, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    const/4 v1, 0x2

    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    .line 692
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    :goto_1
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    return v1

    .line 687
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 302
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 303
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsConfiguration;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsConfiguration;

    goto :goto_0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 701
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 702
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    .line 707
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "displayId"    # I

    .prologue
    .line 282
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 286
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 287
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 288
    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 290
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 291
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "closeAllButtonrSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 597
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    .line 599
    .local v0, "closeAllButtonSize":I
    const/4 v1, 0x0

    sub-int v2, p2, v0

    invoke-virtual {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 601
    return-void
.end method

.method public getCurrentActivity()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    return v0
.end method

.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 580
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 582
    .local v0, "searchBarSize":I
    const/4 v0, 0x0

    .line 585
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 587
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 560
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 561
    .local v1, "searchBarBounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 562
    .local v0, "closeAllButtonBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 563
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V

    .line 564
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v2, :cond_0

    .line 566
    sub-int v2, p1, p4

    invoke-virtual {p5, v4, p3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v4, v2, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasHorizontalLayout()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performanceAcquire()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 608
    :cond_0
    return-void
.end method

.method public performanceRelease()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 614
    :cond_0
    return-void
.end method

.method public setCurrentActivity(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 619
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 620
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 621
    .local v1, "widthPaddingPctValue":Landroid/util/TypedValue;
    if-eq p2, v3, :cond_0

    .line 622
    const v2, 0x7f0e0329

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 623
    const v2, 0x7f0e0325

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 635
    :goto_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 636
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    .line 637
    return-void

    .line 625
    :cond_0
    const v2, 0x7f0e0327

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 632
    const v2, 0x7f0e0323

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    .line 675
    return-void
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method public showCloseAllButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 660
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDimBg()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 644
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showOnlySplitTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 648
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRecentOnMultiwindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 664
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTaskViewHeaderIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 652
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;I)V

    .line 313
    return-void
.end method

.method update(Landroid/content/Context;I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 318
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 322
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 323
    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v9, :cond_0

    .line 324
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    .line 333
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 335
    const v9, 0x7f0b0029

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 336
    const v9, 0x7f0b002a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 338
    const v9, 0x7f0b0033

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    .line 349
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    const v9, 0x7f0e032a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    .line 357
    const v9, 0x7f0c001d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 359
    const v9, 0x7f0c001e

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 363
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 366
    const v9, 0x7f0e0322

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 367
    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 370
    const v9, 0x7f0e0328

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    .line 373
    const v9, 0x7f0c0031

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 375
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 386
    .local v8, "widthPaddingPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0e0323

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v8, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 388
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 389
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 390
    .local v4, "stackOverscrollPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0e0326

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v4, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 391
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 392
    const v9, 0x7f0c0032

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 398
    const v9, 0x7f0e0327

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 402
    const v9, 0x7f0c001f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 404
    const v9, 0x7f0c0022

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 408
    const v9, 0x7f0c0020

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    .line 410
    const v9, 0x7f0c0023

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 412
    const v9, 0x7f0c0024

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 414
    const v9, 0x7f0c0021

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    .line 416
    const v9, 0x7f0c0025

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 418
    const v9, 0x7f0c0030

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 420
    const v9, 0x7f0e031c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 422
    const v9, 0x7f0e0319

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 424
    const v9, 0x7f0e031d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 425
    const v9, 0x7f0e031a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 426
    const v9, 0x7f0e031b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 427
    const v9, 0x7f0e031f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 429
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 430
    .local v5, "thumbnailAlphaValue":Landroid/util/TypedValue;
    const v9, 0x7f0e0320

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v5, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 431
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 433
    const v9, 0x7f0e0316

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewWidth:I

    .line 434
    const v9, 0x7f0e0317

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHeight:I

    .line 435
    const v9, 0x7f0e0318

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewMarginTop:I

    .line 438
    const v9, 0x7f090044

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 440
    const v9, 0x7f090045

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 442
    const v9, 0x7f090046

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 444
    const v9, 0x7f090049

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 446
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 447
    .local v0, "affMinAlphaPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0e032b

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v0, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 448
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 451
    const v9, 0x7f0e0321

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 452
    const v9, 0x7f0c001c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 456
    const v9, 0x7f0c002f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 460
    const v9, 0x7f0b0019

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 461
    const v9, 0x7f0c0033

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 463
    const v9, 0x7f0b001a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 464
    const v9, 0x7f0c0034

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 466
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 467
    .local v6, "topTaskInitialScrollTopOffsetValue":Landroid/util/TypedValue;
    const v9, 0x7f0e041b

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v6, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 468
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffset:F

    .line 469
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 470
    .local v7, "topTaskInitialScrollTopOffsetValueOnMultiWindow":Landroid/util/TypedValue;
    const v9, 0x7f0e041c

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 472
    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffsetOnMultiWindow:F

    .line 473
    return-void

    .line 333
    .end local v0    # "affMinAlphaPctValue":Landroid/util/TypedValue;
    .end local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    .end local v5    # "thumbnailAlphaValue":Landroid/util/TypedValue;
    .end local v6    # "topTaskInitialScrollTopOffsetValue":Landroid/util/TypedValue;
    .end local v7    # "topTaskInitialScrollTopOffsetValueOnMultiWindow":Landroid/util/TypedValue;
    .end local v8    # "widthPaddingPctValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 521
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 493
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "personal_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    .line 500
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    .line 512
    return-void

    :cond_0
    move v0, v2

    .line 491
    goto :goto_0

    :cond_1
    move v0, v2

    .line 493
    goto :goto_1

    :cond_2
    move v0, v2

    .line 496
    goto :goto_2

    :cond_3
    move v1, v2

    .line 498
    goto :goto_3
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 482
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 483
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 484
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 478
    return-void
.end method

.method public useRemoveTaskActionBySwipe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 656
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
