.class public Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field public static PAGE_APPLIST:I = 0x0

.field public static final PAGE_RECENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Recents_RecentsMultiWindowActivity"

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field private mAppListViewPager:Landroid/support/v4/view/ViewPager;

.field private mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mElevationLineLand:Landroid/view/View;

.field private mElevationLinePort:Landroid/view/View;

.field private mFinishRequested:Z

.field mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuideTextMarginLand:I

.field private mGuideTextMarginPort:I

.field private mHandler:Landroid/os/Handler;

.field private mLastOrientation:I

.field mLastTabKeyEventTime:J

.field mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMiddleLineLand:Landroid/widget/LinearLayout;

.field private mMiddleLinePort:Landroid/widget/LinearLayout;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mNeedDarkFont:Z

.field private mNeedMoveAppListPage:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSelectedAppInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTouchX:F

.field private mViewPagerCount:I

.field private mViewPagerMark:Landroid/widget/LinearLayout;

.field private mViewPagerMarkerMarginLeft:I

.field private mViewPagerMarkerSize:I

.field mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewPagerScrollIdlePage:I

.field private mViewPagerSelectedPage:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->PAGE_APPLIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    .line 138
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 319
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 347
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    .line 366
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 685
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 757
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$112(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object p1
.end method

.method private initViewPageMark()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const v7, 0x3f99999a    # 1.2f

    .line 648
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-ge v0, v4, :cond_2

    .line 650
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 651
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 654
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    .line 655
    const v4, 0x7f020648

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    :goto_1
    if-nez v0, :cond_1

    .line 660
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 661
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 662
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 664
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 669
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_2
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 670
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 671
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 672
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    new-instance v4, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    const v4, 0x7f020647

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 666
    :cond_1
    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 667
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 683
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 828
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 832
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 833
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 834
    const/4 v3, 0x1

    .line 836
    :cond_0
    return v3
.end method


# virtual methods
.method public finishActivity()V
    .locals 4

    .prologue
    .line 747
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 749
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 755
    return-void
.end method

.method public getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method public getSelectedAppPackageInfo()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public getTopRunningPackage(Z)Landroid/util/Pair;
    .locals 9
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v7, 0xa

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 711
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v6, ""

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 714
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    .line 715
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 716
    .local v3, "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopRunningPackage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSplit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "| zone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :try_start_0
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 723
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 731
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2

    .line 726
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    const-string v7, "getTopRunningPackage - baseActivity is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public moveViewPage(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "anim"    # Z

    .prologue
    .line 467
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-lt p1, v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    if-eq v0, p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 644
    const v0, 0x10a0042

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    .line 645
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 515
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onConfigurationChanged is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 517
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 519
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->notifyDataSetChanged()V

    .line 520
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 521
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 522
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 524
    .end local v0    # "tmp":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onCreate is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 152
    const-string v2, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    sput-object v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 153
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 156
    const v2, 0x7f04007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setContentView(I)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e047e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0491

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0492

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    .line 164
    const-string v2, "multiwindow_facade"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 166
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 168
    const v2, 0x7f0f024f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 169
    const v2, 0x7f0f0251

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    .line 170
    const v2, 0x7f0f0256

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    .line 171
    const v2, 0x7f0f0250

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    .line 173
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 174
    .local v9, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e048f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 175
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    .line 177
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v10, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0490

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 179
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    .line 181
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 182
    .local v11, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e048e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v11, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 183
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v2, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    move/from16 v20, v0

    sub-float v7, v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 201
    :goto_1
    const v2, 0x7f0f0252

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    .line 202
    const v2, 0x7f0f0253

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    .line 203
    const v2, 0x7f0f0254

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    .line 204
    const v2, 0x7f0f0255

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 209
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v14

    .line 210
    .local v14, "display":Landroid/view/Display;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 211
    .local v13, "centerbarPoint":Landroid/graphics/Point;
    if-eqz v14, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v14, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Point;->x:I

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Point;->y:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    new-instance v12, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 229
    .local v12, "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v12, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v16

    .line 232
    .local v16, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 262
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 283
    :try_start_0
    const-string v2, "ambientRatio"

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 291
    .local v19, "win":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 292
    .local v18, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 293
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_1

    .line 294
    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 295
    const/4 v2, 0x0

    sput v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->PAGE_APPLIST:I

    .line 297
    :cond_1
    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 298
    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 299
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 301
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 303
    .local v8, "am":Landroid/app/IActivityManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 309
    :goto_3
    :try_start_2
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v17, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v2, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 316
    .end local v17    # "localIntentFilter":Landroid/content/IntentFilter;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    return-void

    .line 185
    .end local v8    # "am":Landroid/app/IActivityManager;
    .end local v12    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .end local v13    # "centerbarPoint":Landroid/graphics/Point;
    .end local v14    # "display":Landroid/view/Display;
    .end local v16    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v18    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "win":Landroid/view/Window;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0xbbbbbc

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, -0xbbbbbc

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    move/from16 v20, v0

    sub-float v7, v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_1

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    move/from16 v20, v0

    sub-float v7, v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_1

    .line 284
    .restart local v12    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .restart local v13    # "centerbarPoint":Landroid/graphics/Point;
    .restart local v14    # "display":Landroid/view/Display;
    .restart local v16    # "fm":Landroid/support/v4/app/FragmentManager;
    :catch_0
    move-exception v15

    .line 285
    .local v15, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v15}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 286
    .end local v15    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v15

    .line 287
    .local v15, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2

    .line 304
    .end local v15    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v8    # "am":Landroid/app/IActivityManager;
    .restart local v18    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "win":Landroid/view/Window;
    :catch_2
    move-exception v15

    .line 305
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to registerProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 313
    .end local v15    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 588
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 589
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onDestroy is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 593
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :goto_1
    iput-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 605
    sput-object v5, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 606
    return-void

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterBroadcastReceiver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 610
    sparse-switch p1, :sswitch_data_0

    .line 636
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 615
    :sswitch_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    if-nez v2, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    .line 617
    .local v0, "fr":Lcom/android/systemui/multiwindow/SplitRecentsFragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 622
    .end local v0    # "fr":Lcom/android/systemui/multiwindow/SplitRecentsFragment;
    :sswitch_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    if-nez v2, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    .line 624
    .restart local v0    # "fr":Lcom/android/systemui/multiwindow/SplitRecentsFragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 529
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onNewIntent is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setIntent(Landroid/content/Intent;)V

    .line 531
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 541
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 542
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onResume is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 550
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mVisible:Z

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setGuideTextVisibility(I)V

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recentUI.multiwindow.package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 577
    :goto_0
    return-void

    .line 567
    :cond_3
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-nez v1, :cond_4

    .line 568
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 574
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "RecentsMultiWindow"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    goto :goto_0

    .line 570
    :cond_4
    sget v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->PAGE_APPLIST:I

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 536
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStart is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 581
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 583
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStop is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGuideTextVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 445
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 448
    goto :goto_0

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 743
    monitor-exit v1

    .line 744
    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMainLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    .line 413
    .local v0, "isSplit":Z
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 415
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 417
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v2, v6, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 420
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 439
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    .line 442
    return-void

    :cond_0
    move v2, v4

    .line 420
    goto :goto_0

    :cond_1
    move v2, v3

    .line 421
    goto :goto_1

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 430
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    if-eqz v0, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    move v2, v4

    .line 430
    goto :goto_3

    :cond_4
    move v2, v3

    .line 431
    goto :goto_4
.end method

.method public updateSelectedPackageName(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 810
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 811
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 812
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 813
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .local v0, "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    invoke-interface {v0, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;->updateSelectedPackageName(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Recents_RecentsMultiWindowActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 821
    .end local v0    # "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 823
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
