.class public Lcom/android/systemui/BatteryMeterViewMod;
.super Landroid/view/View;
.source "BatteryMeterViewMod.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterViewMod$1;,
        Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public SHOW_100_PERCENT:Z

.field private mBatteryColor:I

.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private mBatteryTypeView:Ljava/lang/String;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPercentageChargingColor:I

.field private mPercentageColor:I

.field private mPercentageOnly:Z

.field mShowIcon:Z

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/systemui/BatteryMeterViewMod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterViewMod;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterViewMod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterViewMod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->SHOW_100_PERCENT:Z

    .line 73
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    .line 74
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    .line 83
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    .line 85
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    .line 86
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    .line 87
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mClipFrame:Landroid/graphics/RectF;

    .line 88
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    .line 94
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    .line 170
    new-instance v7, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterViewMod;Lcom/android/systemui/BatteryMeterViewMod$1;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    .line 436
    new-instance v7, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterViewMod;Lcom/android/systemui/BatteryMeterViewMod$1;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 205
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x7f0d0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 206
    .local v5, "levels":Landroid/content/res/TypedArray;
    const v7, 0x7f0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 208
    .local v2, "colors":Landroid/content/res/TypedArray;
    sget-object v7, Lcom/android/systemui/R$styleable;->BatteryIcon:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 210
    .local v1, "batteryType":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    .line 213
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 214
    const-string v7, "statusbar"

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    .line 217
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 218
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mColors:[I

    .line 219
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 220
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mColors:[I

    mul-int/lit8 v8, v4, 0x2

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 221
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mColors:[I

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    const v7, 0x7f0a02ff

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningString:Ljava/lang/String;

    .line 229
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    .line 230
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    const v8, 0x7f090028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 232
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    .line 237
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 238
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    .line 242
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 244
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 245
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterViewMod;->mColors:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    const-string v7, "sans-serif"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 247
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 248
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 250
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    .line 251
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterViewMod;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    .line 253
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/BatteryMeterViewMod;->setLayerType(ILandroid/graphics/Paint;)V

    .line 255
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/BatteryMeterViewMod;->updateSettings(Z)V

    .line 256
    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 259
    const v5, 0x7f0d0003

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 260
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 261
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 262
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 263
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 261
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 265
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 266
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 267
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 268
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 266
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 270
    :cond_1
    return-object v4
.end method

.method private updateBattery()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 523
    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    .line 524
    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->SHOW_100_PERCENT:Z

    .line 526
    const-string v2, "sans-serif"

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 527
    .local v0, "font":Landroid/graphics/Typeface;
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-nez v2, :cond_4

    .line 528
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    .line 529
    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    .line 546
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 548
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    .line 550
    .local v1, "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :goto_1
    iget v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_8

    iget-boolean v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    if-nez v2, :cond_8

    .line 551
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    :goto_2
    iget-boolean v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_1

    .line 560
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageChargingColor:I

    if-ne v2, v7, :cond_b

    .line 561
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v5, :cond_a

    .line 562
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    :cond_1
    iget v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_c

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v8, :cond_c

    .line 577
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->postInvalidate()V

    .line 595
    return-void

    .line 530
    .end local v1    # "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :cond_4
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v8, :cond_5

    .line 531
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    .line 532
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    .line 533
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->SHOW_100_PERCENT:Z

    goto :goto_0

    .line 534
    :cond_5
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v6, :cond_6

    .line 535
    const-string v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 536
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    .line 537
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    .line 538
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->SHOW_100_PERCENT:Z

    goto :goto_0

    .line 539
    :cond_6
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v5, :cond_0

    .line 540
    const-string v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 541
    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    .line 542
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    .line 543
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    .line 544
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterViewMod;->SHOW_100_PERCENT:Z

    goto/16 :goto_0

    .line 548
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    goto/16 :goto_1

    .line 552
    .restart local v1    # "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :cond_8
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryColor:I

    if-ne v2, v7, :cond_9

    .line 553
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 556
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 565
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 569
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageChargingColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 578
    :cond_c
    iget v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_e

    iget-boolean v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-eq v2, v5, :cond_d

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v6, :cond_e

    .line 581
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 582
    :cond_e
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageColor:I

    if-ne v2, v7, :cond_10

    .line 583
    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v8, :cond_f

    .line 584
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 587
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 590
    :cond_10
    iget-boolean v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v1, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v2, v6, :cond_3

    .line 592
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 440
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    .line 442
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    .line 443
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->postInvalidate()V

    goto :goto_0

    .line 447
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 451
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    .line 453
    :cond_3
    if-eqz v1, :cond_4

    .line 454
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    .line 456
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mDemoTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    move-object/from16 v19, v0

    .line 294
    .local v19, "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :goto_0
    move-object/from16 v0, v19

    iget v12, v0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    .line 296
    .local v12, "level":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_2

    .line 433
    :cond_0
    :goto_1
    return-void

    .line 293
    .end local v12    # "level":I
    .end local v19    # "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    move-object/from16 v19, v0

    goto :goto_0

    .line 298
    .restart local v12    # "level":I
    .restart local v19    # "tracker":Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
    :cond_2
    int-to-float v0, v12

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v9, v23, v24

    .line 299
    .local v9, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterViewMod;->getPaddingTop()I

    move-result v17

    .line 300
    .local v17, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterViewMod;->getPaddingLeft()I

    move-result v15

    .line 301
    .local v15, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterViewMod;->getPaddingRight()I

    move-result v16

    .line 302
    .local v16, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterViewMod;->getPaddingBottom()I

    move-result v14

    .line 303
    .local v14, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    sub-int v10, v23, v14

    .line 304
    .local v10, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v15

    sub-int v20, v23, v16

    .line 306
    .local v20, "width":I
    int-to-float v0, v10

    move/from16 v23, v0

    const v24, 0x3df5c28f    # 0.12f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterViewMod;->mButtonHeight:I

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    div-int/lit8 v26, v20, 0x3

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x3

    mul-int/lit8 v24, v24, 0x2

    add-int v24, v24, v15

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    .line 316
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3e800000    # 0.25f

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x40a00000    # 5.0f

    add-float v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 337
    :cond_3
    const/16 v23, 0x60

    move/from16 v0, v23

    if-lt v12, v0, :cond_9

    .line 338
    const/high16 v9, 0x3f800000    # 1.0f

    .line 343
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v9, v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 346
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v26, v26, v9

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 349
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mShowIcon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 354
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_10

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40900000    # 4.5f

    div-float v24, v24, v25

    add-float v6, v23, v24

    .line 359
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40c00000    # 6.0f

    div-float v24, v24, v25

    add-float v8, v23, v24

    .line 360
    .local v8, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40e00000    # 7.0f

    div-float v24, v24, v25

    sub-float v7, v23, v24

    .line 361
    .local v7, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x41200000    # 10.0f

    div-float v24, v24, v25

    sub-float v5, v23, v24

    .line 362
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v23, v23, v6

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v23, v23, v5

    if-eqz v23, :cond_c

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 369
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_b

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v25, v0

    aget v25, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v11, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 369
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 312
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v11    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    .line 339
    :cond_9
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v12, v0, :cond_4

    .line 340
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 344
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_4

    .line 374
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v7    # "br":F
    .restart local v8    # "bt":F
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    .end local v11    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 384
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mShowPercent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 385
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 387
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "statusbar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    iget v0, v13, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    const/high16 v25, 0x41800000    # 16.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterViewMod;->mTextHeight:F

    .line 409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageOnly:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 410
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 416
    .local v18, "str":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "statusbar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3e800000    # 0.25f

    mul-float v24, v24, v25

    sub-float v21, v23, v24

    .line 427
    .local v21, "x":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef0a3d7    # 0.47f

    mul-float v22, v23, v24

    .line 428
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 379
    .end local v18    # "str":Ljava/lang/String;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_10
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v12, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .line 381
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f    # 0.48f

    mul-float v22, v23, v24

    .line 382
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 389
    .end local v21    # "x":F
    .end local v22    # "y":F
    .restart local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "quicksettings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    iget v0, v13, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    const/high16 v25, 0x41b00000    # 22.0f

    mul-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 392
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v26, 0x64

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    const v23, 0x3ec28f5c    # 0.38f

    :goto_a
    mul-float v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    :cond_13
    const/high16 v23, 0x3f000000    # 0.5f

    goto :goto_a

    .line 396
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 398
    .restart local v13    # "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "statusbar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v26, 0x64

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const v23, 0x3f147ae1    # 0.58f

    :goto_b
    mul-float v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    :cond_15
    const v23, 0x3f333333    # 0.7f

    goto :goto_b

    .line 402
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "quicksettings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    iget v0, v13, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    const/high16 v25, 0x41600000    # 14.0f

    mul-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 412
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_17
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "str":Ljava/lang/String;
    goto/16 :goto_8

    .line 419
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "quicksettings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e4ccccd    # 0.2f

    mul-float v24, v24, v25

    sub-float v21, v23, v24

    .restart local v21    # "x":F
    goto/16 :goto_9

    .line 422
    .end local v21    # "x":F
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .restart local v21    # "x":F
    goto/16 :goto_9

    .line 425
    .end local v21    # "x":F
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .restart local v21    # "x":F
    goto/16 :goto_9
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewMod;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod;->mTracker:Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 275
    iput p2, p0, Lcom/android/systemui/BatteryMeterViewMod;->mHeight:I

    .line 276
    iput p1, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWidth:I

    .line 277
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterViewMod;->mWarningTextHeight:F

    .line 279
    return-void
.end method

.method public updateSettings(Z)V
    .locals 14
    .param p1, "isQuickSettingsTile"    # Z

    .prologue
    const/4 v13, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x2

    const/high16 v11, 0x3f000000    # 0.5f

    .line 461
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 463
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v7, "status_bar_battery"

    invoke-static {v5, v7, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    .line 466
    if-eqz p1, :cond_0

    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    const/16 v10, 0x8

    if-ne v7, v10, :cond_0

    .line 467
    iput v8, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    .line 470
    :cond_0
    const-string v7, "status_bar_battery_color"

    invoke-static {v5, v7, v12, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryColor:I

    .line 472
    const-string v7, "status_bar_battery_text_color"

    invoke-static {v5, v7, v12, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageColor:I

    .line 474
    const-string v7, "status_bar_battery_text_charging_color"

    invoke-static {v5, v7, v12, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mPercentageChargingColor:I

    .line 478
    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-eq v7, v9, :cond_1

    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v7, v13, :cond_4

    :cond_1
    move v0, v9

    .line 483
    .local v0, "activated":Z
    :goto_0
    if-eqz v0, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/BatteryMeterViewMod;->setVisibility(I)V

    .line 485
    if-eqz v0, :cond_3

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 488
    .local v6, "width":F
    const/4 v1, 0x0

    .line 489
    .local v1, "height":F
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 490
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 491
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    const-string v10, "statusbar"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 492
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41800000    # 16.0f

    mul-float/2addr v7, v10

    add-float v1, v7, v11

    .line 493
    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v7, v9, :cond_6

    .line 494
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x42180000    # 38.0f

    mul-float/2addr v7, v9

    add-float v6, v7, v11

    .line 500
    :goto_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v7, v6

    float-to-int v9, v1

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 501
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 502
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v11

    add-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v2, v8, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterViewMod;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterViewMod;->updateBattery()V

    .line 520
    .end local v1    # "height":F
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":F
    :cond_3
    return-void

    .end local v0    # "activated":Z
    :cond_4
    move v0, v8

    .line 478
    goto :goto_0

    .line 483
    .restart local v0    # "activated":Z
    :cond_5
    const/16 v7, 0x8

    goto :goto_1

    .line 495
    .restart local v1    # "height":F
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v6    # "width":F
    :cond_6
    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v7, v13, :cond_7

    .line 496
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x41b00000    # 22.0f

    mul-float/2addr v7, v9

    add-float v6, v7, v11

    goto :goto_2

    .line 498
    :cond_7
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x41280000    # 10.5f

    mul-float/2addr v7, v9

    add-float v6, v7, v11

    goto :goto_2

    .line 504
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryTypeView:Ljava/lang/String;

    const-string v8, "quicksettings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 505
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42000000    # 32.0f

    mul-float/2addr v7, v8

    add-float v1, v7, v11

    .line 506
    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v7, v9, :cond_9

    .line 507
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42500000    # 52.0f

    mul-float/2addr v7, v8

    add-float v6, v7, v11

    .line 513
    :goto_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v7, v6

    float-to-int v8, v1

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 514
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x31

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 515
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterViewMod;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 508
    :cond_9
    iget v7, p0, Lcom/android/systemui/BatteryMeterViewMod;->mBatteryStyle:I

    if-ne v7, v13, :cond_a

    .line 509
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42140000    # 37.0f

    mul-float/2addr v7, v8

    add-float v6, v7, v11

    goto :goto_4

    .line 511
    :cond_a
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41b00000    # 22.0f

    mul-float/2addr v7, v8

    add-float v6, v7, v11

    goto :goto_4
.end method
