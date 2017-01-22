.class public Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;
.super Lcom/android/systemui/recents/views/LayoutAlgorithm;
.source "RecentsWindowLayoutAlgorithm.java"


# static fields
.field public static final sAffiliatedTasksInterval:I = 0x8

.field public static final sCloseAllRange:I = 0x64

.field public static final sFirstTaskInterval:I = 0x1d

.field public static final sLastTaskInterval:I = 0xdc

.field public static final sTasksInterval:I = 0x24

.field public static final sVisibleTaskCount:I = 0xa


# instance fields
.field private Debug:Z

.field private TAG:Ljava/lang/String;

.field mCountTasks:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    .line 44
    const-string v1, "Recents_RecentsWindowLayoutAlgorithm"

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    .line 49
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mCountTasks:I

    .line 53
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 54
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 55
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    return-void
.end method

.method private getCountCurrentTasks()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mCountTasks:I

    return v0
.end method

.method public static initializeCurve()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method private setCountCurrentTasks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mCountTasks:I

    .line 219
    return-void
.end method


# virtual methods
.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 13
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 89
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMaxScrollP:F

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMinScrollP:F

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v10, v10, -0x64

    int-to-float v7, v10

    .line 94
    .local v7, "scrollBoundary":F
    const/4 v5, 0x0

    .line 95
    .local v5, "pAtTask":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 96
    .local v9, "taskCount":I
    const/4 v1, 0x0

    .line 97
    .local v1, "interval":F
    move v0, v9

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_4

    .line 98
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 99
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v10, v8}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/lit8 v10, v10, 0x24

    int-to-float v6, v10

    .line 101
    .local v6, "pPeek":F
    :goto_2
    add-float/2addr v1, v6

    .line 102
    sub-float v10, v7, v1

    div-float v5, v10, v7

    .line 103
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v11, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "computeMinMaxScroll : task = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pAtTask = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 99
    .end local v6    # "pPeek":F
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    int-to-float v6, v10

    goto :goto_2

    .line 107
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->setCountCurrentTasks(Ljava/util/ArrayList;)V

    .line 109
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/lit8 v10, v10, 0x24

    int-to-float v10, v10

    div-float v2, v10, v7

    .line 110
    .local v2, "intervalP":F
    const/4 v3, 0x0

    .line 111
    .local v3, "overScrollP":F
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/lit8 v10, v10, 0x24

    int-to-float v10, v10

    div-float v10, v7, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 112
    .local v4, "overTasks":I
    move v0, v9

    :goto_3
    if-le v0, v4, :cond_5

    .line 113
    add-float/2addr v3, v2

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 115
    :cond_5
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mInitialScrollP:F

    .line 117
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMaxScrollP:F

    .line 119
    const/high16 v10, -0x3ca40000    # -220.0f

    div-float/2addr v10, v7

    sub-float/2addr v10, v3

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMinScrollP:F

    .line 120
    iget-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "computeMinMaxScroll : mMaxScrollP = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMinScrollP = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget p1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewWidth:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget p2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHeight:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewMarginTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewMarginTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeRects : windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskStackBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .locals 3
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

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 129
    new-instance v0, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/LayoutAlgorithm;II)V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    invoke-direct {v0, p0, v2, v2}, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/LayoutAlgorithm;II)V

    goto :goto_0
.end method

.method curveProgressToScale(F)F
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method curveProgressToScreenX(F)I
    .locals 4
    .param p1, "p"    # F

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curveProgressToScreenX : p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x64

    int-to-float v0, v1

    .line 193
    .local v0, "scrollBoundary":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-float v2, p1, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1d

    return v1
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 148
    sub-float v1, p1, p2

    .line 149
    .local v1, "pTaskRelative":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x64

    int-to-float v2, v3

    .line 150
    .local v2, "scrollBoundary":F
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->getCountCurrentTasks()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    int-to-float v4, v4

    div-float v4, v2, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 151
    move v1, p1

    .line 153
    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 154
    .local v0, "pBounded":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->curveProgressToScreenX(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x24

    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 155
    iget v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    if-ltz v3, :cond_1

    iget v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    .line 157
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 158
    iget-object v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    :goto_0
    return-object p3

    .line 161
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStackTransform : taskProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stackScroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pTaskRelative = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", translationX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 165
    iput v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 166
    iget-object v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    iget-object v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 168
    iput v1, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 142
    .end local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    return-object p3

    .restart local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object p3

    goto :goto_0
.end method

.method public getUntransformedTaskViewSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 175
    .local v0, "tvSize":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 176
    return-object v0
.end method

.method screenXToCurveProgress(I)F
    .locals 5
    .param p1, "screenX"    # I

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x64

    int-to-float v0, v2

    .line 199
    .local v0, "scrollBoundary":F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 200
    .local v1, "x":F
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->Debug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenXToCurveProgress : screenX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    return v1
.end method

.method screenYToCurveProgress(I)F
    .locals 1
    .param p1, "screenY"    # I

    .prologue
    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
