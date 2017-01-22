.class public Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockSingleView.java"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_DATE:I = 0x12

.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_TIME:I = 0x46

.field private static final FONT_SIZE_EASY_MODE_SINGLE_DATE:I = 0x14

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field protected static final MARGIN_RATIO_LEFT:F = 50.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_LONG_SHADOW_UPDATED:I = 0x68

.field private static final MSG_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final MSG_SINGLE_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockSingleView"

.field public static mBatteryLevel:I


# instance fields
.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private final mHandler:Landroid/os/Handler;

.field private mIsKeyguardShowing:Z

.field private mIsScreenOn:Z

.field private mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

.field private mLocale:Ljava/util/Locale;

.field private mOldClockText:Ljava/lang/String;

.field private mShadowImageView:Landroid/widget/ImageView;

.field private mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleClockContainer:Landroid/view/View;

.field private mSingleClockSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field protected mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 64
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    .line 66
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsKeyguardShowing:Z

    .line 89
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method private addTextChangedListenerForClockTimeMargin()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private applyFontEffect()V
    .locals 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "effect":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    const-string v1, "SecKeyguardClockSingleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/FontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/FontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const-string v1, "SecKeyguardClockSingleView"

    const-string v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 546
    :cond_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 551
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 559
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 551
    goto :goto_0

    :cond_4
    move v0, v2

    .line 554
    goto :goto_1

    :cond_5
    move v1, v2

    .line 558
    goto :goto_2
.end method

.method private isLeftKoreanAMPM()Z
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    return v0
.end method

.method private isShowDateOn()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 3

    .prologue
    const/16 v2, 0x68

    .line 345
    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    .line 356
    return-void
.end method

.method private setClockContentDesciption()V
    .locals 4

    .prologue
    .line 497
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v2, :cond_2

    const-string v2, "ko"

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tr"

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 499
    .local v0, "isKorean":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 500
    .local v1, "singleAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    .line 502
    .end local v0    # "isKorean":Z
    .end local v1    # "singleAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setDateContentDescriptionPlusFullDate(Landroid/view/View;)V

    .line 503
    return-void

    .line 498
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    .restart local v0    # "isKorean":Z
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "time"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p3, "ampm"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p4, "isKorean"    # Z

    .prologue
    .line 507
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 508
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 509
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private setDateContentDescriptionPlusFullDate(Landroid/view/View;)V
    .locals 6
    .param p1, "tv"    # Landroid/view/View;

    .prologue
    .line 529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 530
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 532
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "dateFormatWDM":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    :goto_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 540
    .local v3, "dateText":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 541
    return-void

    .line 537
    .end local v3    # "dateText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public changeTextColorOnWhiteWallpaper()V
    .locals 6

    .prologue
    const v2, -0xbbbbbc

    const/high16 v5, -0x80000000

    const/4 v4, 0x0

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 678
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 683
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 725
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v0, :cond_4

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 699
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 701
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 703
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 712
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 713
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 715
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 261
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 263
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_date_and_year"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 321
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v2, 0x67

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    .line 191
    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 192
    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 193
    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm_kor:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 194
    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 195
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    const-string v1, "/system/fonts/SamsungNeoNumCond-3T.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 197
    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    .line 198
    const-string v1, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    .line 206
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "white_cover_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 209
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGENIFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setAllCaps(Z)V

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->applyFontEffect()V

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    sget v1, Lcom/android/keyguard/R$id;->shadow_imageview:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    .line 220
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v1, :cond_a

    .line 221
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_3
    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v4, v5}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-nez v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .local v0, "clockContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 233
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 234
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .end local v0    # "clockContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const-string v1, "iw"

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 240
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .restart local v0    # "clockContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .end local v0    # "clockContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 248
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    .line 249
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    .line 253
    :goto_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 256
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V

    .line 257
    return-void

    .line 200
    :cond_7
    const-string v1, "/system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 201
    const-string v1, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    .line 202
    const-string v1, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 206
    goto/16 :goto_1

    :cond_9
    move v2, v3

    .line 207
    goto/16 :goto_2

    .line 223
    :cond_a
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x4

    goto :goto_5

    .line 251
    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 335
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onLayout changed. shadow init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->intialize()V

    .line 342
    :cond_0
    return-void
.end method

.method protected setClockStyle()V
    .locals 15

    .prologue
    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v13, 0x4

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 376
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 377
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 379
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "themeFont":Ljava/lang/String;
    const/4 v5, 0x0

    .line 381
    .local v5, "tf":Landroid/graphics/Typeface;
    if-eqz v6, :cond_5

    .line 382
    const-string v7, "SecKeyguardClockSingleView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clockThemeFont: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 388
    :goto_0
    if-eqz v5, :cond_0

    .line 389
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSystemThemeFont()Ljava/lang/String;

    move-result-object v6

    .line 393
    if-eqz v6, :cond_6

    .line 394
    const-string v7, "SecKeyguardClockSingleView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "systemThemeFont: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 397
    if-eqz v5, :cond_1

    .line 398
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 399
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 411
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v2

    .line 414
    .local v2, "fontSize":I
    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 417
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 418
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v7, 0x428c0000    # 70.0f

    invoke-static {v11, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v2, v7

    .line 422
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateTimeFormat()V

    .line 423
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 424
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 425
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->kg_singleclock_first_digit_one_margin_start:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 435
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v8, v2

    invoke-virtual {v7, v10, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 438
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 439
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 440
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 466
    :goto_3
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v7, :cond_4

    .line 467
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 468
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 469
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 472
    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 473
    const-string v7, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 474
    .local v1, "dateTf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_3

    .line 475
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 476
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 477
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v7, v11, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 488
    .end local v1    # "dateTf":Landroid/graphics/Typeface;
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->changeTextColorOnWhiteWallpaper()V

    .line 489
    return-void

    .line 385
    .end local v2    # "fontSize":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 402
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_7

    .line 403
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_1

    .line 407
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 427
    .restart local v2    # "fontSize":I
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    int-to-float v7, v2

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    neg-int v7, v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 429
    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 430
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 432
    :cond_a
    int-to-float v7, v2

    const/high16 v8, 0x42480000    # 50.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 442
    :cond_b
    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "tr"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 443
    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 444
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 445
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v11, v14}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 448
    :cond_d
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 449
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 453
    :goto_5
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 454
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    .line 451
    :cond_e
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_5

    .line 456
    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 457
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 461
    :goto_6
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 462
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    .line 459
    :cond_10
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_6

    .line 479
    :cond_11
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 480
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v11, v14}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto/16 :goto_4

    .line 484
    :cond_12
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateShadowViews()V

    .line 565
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    .line 567
    :cond_0
    return-void
.end method

.method public updateMarginPaddingTimeIfTheme(Z)V
    .locals 8
    .param p1, "isThemeFont"    # Z

    .prologue
    const/4 v7, 0x0

    .line 636
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 639
    .local v3, "clockContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 640
    .local v1, "ampmOpenLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 641
    .local v0, "ampmKorLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 642
    .local v4, "containerStartMargin":I
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_ampm_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 644
    .local v2, "ampmStartMargin":I
    const-string v5, "iw"

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 645
    const/4 v4, 0x0

    .line 648
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 649
    if-eqz p1, :cond_3

    .line 650
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 651
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 652
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 653
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 654
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v4, v7, v2, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    .line 664
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 656
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 657
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 658
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 659
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 662
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7, v7, v7, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    goto :goto_1

    .line 661
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2
.end method
