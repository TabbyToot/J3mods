.class public abstract Lcom/android/systemui/recents/views/LayoutAlgorithm;
.super Ljava/lang/Object;
.source "LayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    }
.end annotation


# static fields
.field static final LogBase:F = 3000.0f

.field static final PrecisionSteps:I = 0xfa

.field static final StackPeekMinScale:F = 0.8f

.field static final XScale:F = 1.75f

.field static px:[F

.field static xp:[F


# instance fields
.field mBetweenAffiliationOffset:I

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialScrollP:F

.field mMaxScrollP:F

.field mMinScrollP:F

.field mStackRect:Landroid/graphics/Rect;

.field mStackVisibleRect:Landroid/graphics/Rect;

.field mTaskProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mTaskRect:Landroid/graphics/Rect;

.field mViewRect:Landroid/graphics/Rect;

.field mWithinAffiliationOffset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 80
    invoke-static {}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->initializeCurve()V

    .line 81
    return-void
.end method

.method public static initializeCurve()V
    .locals 16

    .prologue
    .line 125
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    if-eqz v9, :cond_1

    .line 176
    .local v0, "dx":[F
    .local v2, "fx":[F
    .local v3, "p":F
    .local v4, "pLength":F
    .local v5, "pStep":I
    .local v6, "step":F
    .local v7, "x":F
    .local v8, "xStep":I
    :cond_0
    return-void

    .line 126
    .end local v0    # "dx":[F
    .end local v2    # "fx":[F
    .end local v3    # "p":F
    .end local v4    # "pLength":F
    .end local v5    # "pStep":I
    .end local v6    # "step":F
    .end local v7    # "x":F
    .end local v8    # "xStep":I
    :cond_1
    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    .line 127
    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    .line 130
    const/16 v9, 0xfb

    new-array v2, v9, [F

    .line 131
    .restart local v2    # "fx":[F
    const v6, 0x3b83126f    # 0.004f

    .line 132
    .restart local v6    # "step":F
    const/4 v7, 0x0

    .line 133
    .restart local v7    # "x":F
    const/4 v8, 0x0

    .restart local v8    # "xStep":I
    :goto_0
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_2

    .line 134
    invoke-static {v7}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->logFunc(F)F

    move-result v9

    aput v9, v2, v8

    .line 135
    add-float/2addr v7, v6

    .line 133
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 138
    :cond_2
    const/4 v4, 0x0

    .line 139
    .restart local v4    # "pLength":F
    const/16 v9, 0xfb

    new-array v0, v9, [F

    .line 140
    .restart local v0    # "dx":[F
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v0, v9

    .line 141
    const/4 v8, 0x1

    :goto_1
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_3

    .line 142
    aget v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    aget v10, v2, v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    aput v9, v0, v8

    .line 143
    aget v9, v0, v8

    add-float/2addr v4, v9

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    :cond_3
    const/4 v3, 0x0

    .line 147
    .restart local v3    # "p":F
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 148
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    .line 149
    const/4 v8, 0x1

    :goto_2
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_4

    .line 150
    aget v9, v0, v8

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v9

    .line 151
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    aput v3, v9, v8

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 155
    :cond_4
    const/4 v8, 0x0

    .line 156
    const/4 v3, 0x0

    .line 157
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 158
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    .line 159
    const/4 v5, 0x0

    .restart local v5    # "pStep":I
    :goto_3
    const/16 v9, 0xfa

    if-ge v5, v9, :cond_0

    .line 161
    :goto_4
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_5

    .line 162
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    aget v9, v9, v8

    cmpl-float v9, v9, v3

    if-lez v9, :cond_6

    .line 166
    :cond_5
    if-nez v8, :cond_7

    .line 167
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    aput v10, v9, v5

    .line 174
    :goto_5
    add-float/2addr v3, v6

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 163
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 170
    :cond_7
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    sub-float v9, v3, v9

    sget-object v10, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    aget v10, v10, v8

    sget-object v11, Lcom/android/systemui/recents/views/LayoutAlgorithm;->px:[F

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    div-float v1, v9, v10

    .line 171
    .local v1, "fraction":F
    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    add-float/2addr v9, v1

    mul-float v7, v9, v6

    .line 172
    sget-object v9, Lcom/android/systemui/recents/views/LayoutAlgorithm;->xp:[F

    aput v7, v9, v5

    goto :goto_5
.end method

.method static logFunc(F)F
    .locals 6
    .param p0, "x"    # F

    .prologue
    .line 184
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {p0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->reverse(F)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x453b8000    # 3000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method static reverse(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 180
    neg-float v0, p0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method abstract computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract computeRects(IILandroid/graphics/Rect;)V
.end method

.method public abstract computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;"
        }
    .end annotation
.end method

.method abstract curveProgressToScale(F)F
.end method

.method abstract curveProgressToScreenX(F)I
.end method

.method abstract getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
.end method

.method public abstract getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
.end method

.method public abstract getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
.end method

.method public abstract getUntransformedTaskViewSize()Landroid/graphics/Rect;
.end method

.method invLogFunc(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 188
    invoke-static {p1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->reverse(F)F

    move-result v0

    sub-float v0, v2, v0

    const v1, 0x453b7000    # 2999.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method abstract screenXToCurveProgress(I)F
.end method

.method abstract screenYToCurveProgress(I)F
.end method
