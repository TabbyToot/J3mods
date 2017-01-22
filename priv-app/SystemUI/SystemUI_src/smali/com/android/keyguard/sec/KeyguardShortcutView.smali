.class public Lcom/android/keyguard/sec/KeyguardShortcutView;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;,
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    }
.end annotation


# static fields
.field private static final ACTION_USER_ACTIVITY_BY_SHORTCUT:Ljava/lang/String; = "com.android.internal.policy.impl.sec.UserActivityByShortcut"

.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_URI:Landroid/net/Uri;

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static mBadgeCountColor:I

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static sShortcutImageViewPaddingTop:I


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private isIgnoreTouch:Z

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFirstBorder:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFirst:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private userContext:Landroid/content/Context;

.field private userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 98
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    .line 117
    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 118
    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 125
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const-string v9, "KeyguardShortcutView"

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    .line 70
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    .line 73
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    .line 74
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    .line 80
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 82
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    .line 83
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 89
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 90
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 91
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 102
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 104
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    .line 105
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    .line 108
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    .line 131
    const/16 v9, 0x12c2

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->MISSED_EVENT_UPDATE:I

    .line 132
    new-instance v9, Lcom/android/keyguard/sec/KeyguardShortcutView$1;

    invoke-direct {v9, p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v9, Lcom/android/keyguard/sec/KeyguardShortcutView$2;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 167
    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setGravity(I)V

    .line 169
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    .line 171
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_0

    .line 173
    :try_start_1
    const-string v9, "android"

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :try_start_2
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    .line 180
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "not main user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLauncherLargeIconDensity()I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    .line 191
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "set_shortcuts_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 192
    .local v7, "shortcutSetting":I
    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    .line 193
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 284
    :goto_1
    return-void

    .line 174
    .end local v7    # "shortcutSetting":I
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    .line 176
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "Couldn\'t create user context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 186
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "Couldn\'t get user info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    .line 183
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "main user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 196
    .restart local v7    # "shortcutSetting":I
    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    .line 203
    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v9, :cond_2

    .line 204
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "density = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 207
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 210
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 212
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 213
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 214
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 216
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    sput-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 217
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 219
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 220
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    const/high16 v10, 0x40c00000    # 6.0f

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 222
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 223
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v10, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 225
    const/4 v9, -0x1

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    .line 227
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 228
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v1, v9, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 229
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 230
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    sget-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 233
    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    if-nez v9, :cond_3

    .line 234
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "touch_exploration_enabled"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 237
    .local v4, "exploreByTouchMode":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_4

    .line 238
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 239
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "explore by touch mode on"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v4    # "exploreByTouchMode":I
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 249
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->homescreen_menu_noti_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sput-object v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_fontsize_default:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_fontsize_small:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_icon_centerXOffset:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_icon_topToTopOffset:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_padding_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    .line 262
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$color;->keyguard_text_color_white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sput v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_shortcut_app_list"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "activityList":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activityList"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v0, :cond_6

    .line 271
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3b

    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 273
    .local v8, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v8, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "count":I
    invoke-interface {v8}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 276
    .local v6, "pkgActivity":Ljava/lang/String;
    invoke-direct {p0, p1, v6, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 277
    goto :goto_3

    .line 241
    .end local v0    # "activityList":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgActivity":Ljava/lang/String;
    .end local v8    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .restart local v4    # "exploreByTouchMode":I
    :cond_4
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v10, "explore by touch mode off"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 279
    .end local v4    # "exploreByTouchMode":I
    .restart local v0    # "activityList":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reArrangeSpace()V

    .line 280
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    goto/16 :goto_1

    .line 282
    .end local v2    # "count":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # D

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->launchApplication()V

    return-void
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    return v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$3000()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$3300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3400()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$3600()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$3900()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 706
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v16, v0

    .line 707
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 709
    .local v9, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 713
    .local v13, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 714
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 724
    .end local v13    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 725
    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 727
    .local v11, "iconHeight":I
    if-lez v16, :cond_5

    if-lez v9, :cond_5

    .line 728
    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_a

    .line 729
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 733
    .local v14, "ratio":F
    if-le v12, v11, :cond_8

    .line 734
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 739
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 741
    .local v7, "c":Landroid/graphics/Bitmap$Config;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    sget v22, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 742
    .local v15, "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 743
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 746
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v19, v19, 0x2

    sget v21, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    div-int/lit8 v21, v21, 0x2

    add-int v18, v19, v21

    .line 747
    .local v18, "y":I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 751
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 770
    .end local v7    # "c":Landroid/graphics/Bitmap$Config;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "ratio":F
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_3
    monitor-exit v20

    .line 772
    return-object p1

    .line 715
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 719
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 720
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_1

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 770
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "height":I
    .end local v16    # "width":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 735
    .restart local v9    # "height":I
    .restart local v11    # "iconHeight":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "ratio":F
    .restart local v16    # "width":I
    :cond_8
    if-le v11, v12, :cond_4

    .line 736
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 739
    :cond_9
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    .line 753
    .end local v14    # "ratio":F
    :cond_a
    move/from16 v0, v16

    if-gt v12, v0, :cond_5

    if-gt v11, v9, :cond_5

    .line 754
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth <= width && iconHeight <= height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 757
    .restart local v7    # "c":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    sget v22, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 758
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 759
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 761
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 762
    .restart local v17    # "x":I
    sub-int v19, v9, v11

    div-int/lit8 v19, v19, 0x2

    sget v21, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    div-int/lit8 v21, v21, 0x2

    add-int v18, v19, v21

    .line 763
    .restart local v18    # "y":I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 766
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 684
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 687
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    :cond_0
    return-object v0
.end method

.method private getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 430
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 431
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 432
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 434
    .local v2, "sw":I
    sparse-switch v0, :sswitch_data_0

    .line 448
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    :sswitch_0
    return v3

    .line 436
    :sswitch_1
    const/16 v3, 0xa0

    goto :goto_0

    .line 438
    :sswitch_2
    const/16 v3, 0xf0

    goto :goto_0

    .line 444
    :sswitch_3
    const/16 v3, 0x1e0

    goto :goto_0

    .line 446
    :sswitch_4
    const/16 v3, 0x280

    goto :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xa0 -> :sswitch_2
        0xd5 -> :sswitch_0
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hide"    # Z

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, "children":I
    :goto_0
    if-ltz v0, :cond_2

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, "tmpView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 410
    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 412
    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 416
    .end local v1    # "tmpView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public static isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1024
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1028
    :cond_1
    return v1
.end method

.method private launchApplication()V
    .locals 6

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1010
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reArrangeSpace()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "additionalPadding":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v2

    .line 290
    .local v2, "childrenCount":I
    packed-switch v2, :pswitch_data_0

    .line 302
    const/4 v0, 0x0

    .line 306
    :goto_0
    if-nez v0, :cond_1

    .line 319
    :cond_0
    return-void

    .line 292
    :pswitch_0
    const/4 v0, 0x0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    const/16 v0, 0xa

    .line 296
    goto :goto_0

    .line 299
    :pswitch_2
    const/16 v0, 0x11

    .line 300
    goto :goto_0

    .line 310
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .local v1, "child":I
    :goto_1
    if-ltz v1, :cond_0

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 312
    .local v5, "tmpView":Landroid/view/View;
    instance-of v6, v5, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 313
    check-cast v6, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingLeft()I

    move-result v3

    .local v3, "leftPadding":I
    move-object v6, v5

    .line 314
    check-cast v6, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingRight()I

    move-result v4

    .line 315
    .local v4, "rightPadding":I
    check-cast v5, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v5    # "tmpView":Landroid/view/View;
    add-int v6, v3, v0

    add-int v7, v4, v0

    invoke-virtual {v5, v6, v8, v7, v8}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setPadding(IIII)V

    .line 310
    .end local v3    # "leftPadding":I
    .end local v4    # "rightPadding":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshShortcutItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, "children":I
    :goto_0
    if-ltz v0, :cond_1

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, "tmpView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 422
    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 423
    check-cast v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v1    # "tmpView":Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 419
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    .line 427
    return-void
.end method

.method private reloadBadges()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v7

    .local v7, "children":I
    :goto_0
    if-ltz v7, :cond_2

    .line 382
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 383
    .local v8, "tmpView":Landroid/view/View;
    instance-of v0, v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 392
    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setBadgeCount(I)V

    .line 393
    check-cast v8, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v8    # "tmpView":Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->refreshBadgeCount()V

    .line 395
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 381
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 399
    :cond_2
    return-void
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 11
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F
    .param p2, "saturation"    # F

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 990
    add-float v4, p1, v10

    .line 991
    .local v4, "scale":F
    const/high16 v6, -0x41000000    # -0.5f

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v5, v6, v7

    .line 992
    .local v5, "translate":F
    sub-float v3, v10, p2

    .line 993
    .local v3, "invSat":F
    const v6, 0x3e5a1cac    # 0.213f

    mul-float v2, v6, v3

    .line 994
    .local v2, "R":F
    const v6, 0x3f370a3d    # 0.715f

    mul-float v1, v6, v3

    .line 995
    .local v1, "G":F
    const v6, 0x3d9374bc    # 0.072f

    mul-float v0, v6, v3

    .line 997
    .local v0, "B":F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1004
    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgActivity"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 322
    add-int/lit8 p3, p3, 0x1

    .line 323
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 324
    .local v2, "commaIndex":I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "pkgName":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "activityName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    const/4 v1, 0x0

    .line 330
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .restart local v1    # "cn":Landroid/content/ComponentName;
    new-instance v4, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 333
    .local v4, "testItem":Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 334
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->addView(Landroid/view/View;)V

    .line 342
    :goto_0
    const/4 v1, 0x0

    .line 343
    const/4 v4, 0x0

    .line 345
    return p3

    .line 336
    :cond_1
    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_2

    .line 337
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 813
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 791
    const/4 v3, 0x0

    .line 797
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_3

    .line 798
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 809
    :goto_2
    return-object v4

    .line 793
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 794
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 798
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 804
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 805
    .local v2, "iconId":I
    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 809
    .end local v2    # "iconId":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 778
    :try_start_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 783
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 779
    :catch_0
    move-exception v1

    .line 780
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 783
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 369
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 374
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 375
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 376
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 377
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    .line 378
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 353
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 360
    return-void
.end method

.method public setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V
    .locals 0
    .param p1, "helpTextCallback"    # Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 1020
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 364
    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p1, "pagedView"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 155
    return-void
.end method
