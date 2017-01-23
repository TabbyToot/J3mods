.class public Lcom/android/systemui/BatteryCircleMeterView;
.super Landroid/widget/ImageView;
.source "BatteryCircleMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private mAnimOffset:I

.field private mAttached:Z

.field mBatteryReceiver:Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

.field private mBatteryStyle:I

.field private mCircleAnimSpeed:I

.field private mCircleBatteryView:Ljava/lang/String;

.field private mCircleColor:I

.field private mCircleSize:I

.field private mCircleTextChargingColor:I

.field private mCircleTextColor:I

.field private mDockIsCharging:Z

.field private mDockLevel:I

.field private mHandler:Landroid/os/Handler;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsAnimating:Z

.field private mIsCharging:Z

.field private mIsDocked:Z

.field private mLevel:I

.field private mPaintFont:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintRed:Landroid/graphics/Paint;

.field private mPaintSystem:Landroid/graphics/Paint;

.field private mPathEffect:Landroid/graphics/DashPathEffect;

.field private mPercentage:Z

.field private mRectLeft:Landroid/graphics/RectF;

.field private mRectRight:Landroid/graphics/RectF;

.field private mTextLeftX:Ljava/lang/Float;

.field private mTextRightX:Ljava/lang/Float;

.field private mTextY:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/BatteryCircleMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryCircleMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsDocked:Z

    .line 97
    new-instance v2, Lcom/android/systemui/BatteryCircleMeterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryCircleMeterView$1;-><init>(Lcom/android/systemui/BatteryCircleMeterView;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mInvalidate:Ljava/lang/Runnable;

    .line 127
    new-instance v2, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;-><init>(Lcom/android/systemui/BatteryCircleMeterView;Lcom/android/systemui/BatteryCircleMeterView$1;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryReceiver:Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

    .line 143
    sget-object v2, Lcom/android/systemui/R$styleable;->BatteryIcon:[I

    invoke-virtual {p1, p2, v2, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "circleBatteryType":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 152
    const-string v2, "statusbar"

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    .line 158
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    .line 159
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintGray:Landroid/graphics/Paint;

    .line 164
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintSystem:Landroid/graphics/Paint;

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintRed:Landroid/graphics/Paint;

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintGray:Landroid/graphics/Paint;

    const/high16 v3, 0x1060000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintRed:Landroid/graphics/Paint;

    const v3, 0x1060016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 176
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPathEffect:Landroid/graphics/DashPathEffect;

    .line 178
    invoke-virtual {p0, v5}, Lcom/android/systemui/BatteryCircleMeterView;->updateSettings(Z)V

    .line 179
    return-void

    .line 176
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryCircleMeterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryCircleMeterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/BatteryCircleMeterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/BatteryCircleMeterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/BatteryCircleMeterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/BatteryCircleMeterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsDocked:Z

    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "level"    # I
    .param p3, "animOffset"    # I
    .param p4, "textX"    # F
    .param p5, "drawRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xe

    .line 218
    if-gt p2, v8, :cond_4

    iget-object v7, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintRed:Landroid/graphics/Paint;

    .line 220
    .local v7, "usePaint":Landroid/graphics/Paint;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 232
    :goto_1
    move v6, p2

    .line 233
    .local v6, "padLevel":I
    const/16 v0, 0x61

    if-lt v6, v0, :cond_1

    .line 234
    const/16 v6, 0x64

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I

    if-le v0, v8, :cond_2

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    if-eqz v0, :cond_6

    .line 239
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextChargingColor:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    :cond_2
    :goto_2
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintGray:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 248
    add-int/lit16 v0, p3, 0x10e

    int-to-float v2, v0

    const v0, 0x40666666    # 3.6f

    int-to-float v1, v6

    mul-float v3, v0, v1

    move-object v0, p1

    move-object v1, p5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    const/16 v0, 0x64

    if-ge p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPercentage:Z

    if-eqz v0, :cond_3

    .line 252
    if-gt p2, v8, :cond_7

    .line 253
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 262
    :cond_3
    return-void

    .line 218
    .end local v6    # "padLevel":I
    .end local v7    # "usePaint":Landroid/graphics/Paint;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintSystem:Landroid/graphics/Paint;

    goto :goto_0

    .line 226
    .restart local v7    # "usePaint":Landroid/graphics/Paint;
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1

    .line 241
    .restart local v6    # "padLevel":I
    :cond_6
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleColor:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 254
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x59

    if-le p2, v0, :cond_8

    .line 255
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method

.method private initSizeBasedStuff()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 366
    iget v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    if-nez v4, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/BatteryCircleMeterView;->initSizeMeasureIconHeight()V

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    iget v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float v3, v4, v5

    .line 373
    .local v3, "strokeWidth":F
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 374
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintSystem:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintGray:Landroid/graphics/Paint;

    const/high16 v5, 0x40600000    # 3.5f

    div-float v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v2

    .line 378
    .local v2, "pLeft":I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    div-float v6, v3, v10

    add-float/2addr v5, v6

    const/4 v6, 0x0

    div-float v7, v3, v10

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v3, v10

    sub-float/2addr v7, v8

    int-to-float v8, v2

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v8, v8

    div-float v9, v3, v10

    sub-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    .line 380
    iget v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    add-int v1, v2, v4

    .line 381
    .local v1, "off":I
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectRight:Landroid/graphics/RectF;

    .line 385
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 386
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintFont:Landroid/graphics/Paint;

    const-string v5, "99"

    const-string v6, "99"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v11, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 387
    iget v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextLeftX:Ljava/lang/Float;

    .line 388
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextLeftX:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextRightX:Ljava/lang/Float;

    .line 390
    iget v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    div-float v5, v3, v10

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    .line 393
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    const-string v5, "quicksettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v12, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    .line 401
    :cond_1
    :goto_0
    invoke-virtual {p0, v11, v11}, Lcom/android/systemui/BatteryCircleMeterView;->onMeasure(II)V

    .line 402
    return-void

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v12, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextY:Ljava/lang/Float;

    goto :goto_0
.end method

.method private initSizeMeasureIconHeight()V
    .locals 4

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "measure":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    const-string v3, "quicksettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0209cd

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 420
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 426
    :goto_1
    return-void

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleBatteryView:Ljava/lang/String;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0209cd

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 425
    .local v1, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    goto :goto_1
.end method

.method private updateChargeAnim()V
    .locals 4

    .prologue
    const/16 v1, 0x61

    const/4 v2, 0x0

    .line 339
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mDockIsCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mDockLevel:I

    if-lt v0, v1, :cond_3

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsAnimating:Z

    if-eqz v0, :cond_2

    .line 341
    iput-boolean v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsAnimating:Z

    .line 342
    iput v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    .line 343
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 348
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsAnimating:Z

    .line 350
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_4

    .line 351
    iput v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 353
    :cond_4
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    iget v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleAnimSpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 184
    iget-boolean v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z

    if-nez v2, :cond_1

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryReceiver:Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryReceiver:Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sticky":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryReceiver:Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/BatteryCircleMeterView;->initSizeBasedStuff()V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryCircleMeterView;->updateChargeAnim()V

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsDocked:Z

    if-eqz v0, :cond_3

    .line 273
    iget v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mDockLevel:I

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mDockIsCharging:Z

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextLeftX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/BatteryCircleMeterView;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 275
    iget v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextRightX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectRight:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/BatteryCircleMeterView;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 279
    :goto_2
    return-void

    :cond_1
    move v3, v6

    .line 273
    goto :goto_0

    :cond_2
    move v3, v6

    .line 275
    goto :goto_1

    .line 277
    :cond_3
    iget v2, p0, Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mAnimOffset:I

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mTextLeftX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/BatteryCircleMeterView;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 208
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/BatteryCircleMeterView;->initSizeMeasureIconHeight()V

    .line 212
    :cond_0
    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mIsDocked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryCircleMeterView;->setMeasuredDimension(II)V

    .line 214
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSettings(Z)V
    .locals 9
    .param p1, "isQuickSettingsTile"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 285
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "status_bar_battery"

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    .line 288
    const-string v3, "status_bar_battery_color"

    invoke-static {v2, v3, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleColor:I

    .line 290
    const-string v3, "status_bar_battery_text_color"

    invoke-static {v2, v3, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextColor:I

    .line 293
    const-string v3, "status_bar_battery_text_charging_color"

    invoke-static {v2, v3, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextChargingColor:I

    .line 296
    const-string v3, "status_bar_circle_battery_animationspeed"

    invoke-static {v2, v3, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleAnimSpeed:I

    .line 300
    const v3, 0x7f090029

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 302
    .local v0, "defaultColor":I
    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextColor:I

    if-ne v3, v6, :cond_0

    .line 303
    iput v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextColor:I

    .line 305
    :cond_0
    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextChargingColor:I

    if-ne v3, v6, :cond_1

    .line 306
    iput v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleTextChargingColor:I

    .line 308
    :cond_1
    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleColor:I

    if-ne v3, v6, :cond_2

    .line 309
    iput v0, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleColor:I

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPaintSystem:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mRectLeft:Landroid/graphics/RectF;

    .line 315
    iput v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I

    .line 317
    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 318
    iput-boolean v4, p0, Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z

    .line 326
    :goto_0
    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    if-eq v3, v8, :cond_3

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_7

    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/BatteryCircleMeterView;->mPercentage:Z

    .line 329
    iget-boolean v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/BatteryCircleMeterView;->setVisibility(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/BatteryCircleMeterView;->invalidate()V

    .line 332
    return-void

    .line 320
    :cond_4
    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    if-eq v3, v7, :cond_5

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    if-eq v3, v8, :cond_5

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mBatteryStyle:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_6

    :cond_5
    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v5, v4

    .line 326
    goto :goto_1

    .line 329
    :cond_8
    const/16 v4, 0x8

    goto :goto_2
.end method
