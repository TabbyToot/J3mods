.class public abstract Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.super Landroid/app/Activity;
.source "RecentsSynchronizerActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# static fields
.field private static final DEBUG:Z = false

.field protected static final LAUNCH_EXPAND_HOME:I = 0x0

.field protected static final LAUNCH_TASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Recents_SynchronizerActivity"

.field private static mRecentsActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsSynchronizerActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsOrientationRequested:Z

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    .line 40
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    .line 43
    :cond_0
    return-void
.end method

.method protected static registerRecentsActivity(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "instance"    # Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .prologue
    .line 47
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestOrientation(ILandroid/app/Activity;)V
    .locals 1
    .param p1, "mainRot"    # I
    .param p2, "target"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 102
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static unregisterRecentsActivity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 53
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismiss()V

    .line 346
    return-void
.end method

.method protected dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    move-result v0

    return v0
.end method

.method protected dismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "blockToEnterFocusedTask"    # Z

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method protected finishByCloseAllButton()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 401
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->NOBLE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->ZEN:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 418
    .local v0, "requestAnimation":Z
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToCloseAll(ZZ)V

    .line 419
    return-void

    .end local v0    # "requestAnimation":Z
    :cond_0
    move v0, v1

    .line 401
    goto :goto_0
.end method

.method isAllTaskRemoved()Z
    .locals 14

    .prologue
    .line 270
    sget-object v12, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 271
    :try_start_0
    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v11, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 272
    const-string v11, "display"

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 273
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 274
    .local v3, "displays":[Landroid/view/Display;
    move-object v1, v3

    .local v1, "arr$":[Landroid/view/Display;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v1, v6

    .line 275
    .local v2, "display":Landroid/view/Display;
    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 276
    .local v0, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v0, :cond_1

    .line 277
    check-cast v0, Lcom/android/systemui/recents/RecentsActivity;

    .end local v0    # "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    iget-object v10, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 278
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    if-eqz v10, :cond_1

    .line 279
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 280
    .local v8, "numStacks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 281
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    .line 282
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    const/4 v11, 0x0

    monitor-exit v12

    .line 290
    .end local v1    # "arr$":[Landroid/view/Display;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "numStacks":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :goto_2
    return v11

    .line 280
    .restart local v1    # "arr$":[Landroid/view/Display;
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v3    # "displays":[Landroid/view/Display;
    .restart local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v5    # "i":I
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "numStacks":I
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 274
    .end local v5    # "i":I
    .end local v8    # "numStacks":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "arr$":[Landroid/view/Display;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_2

    .line 291
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method protected moveTaskToBack(ZZ)Z
    .locals 1
    .param p1, "nonRoot"    # Z
    .param p2, "needToSync"    # Z

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method protected nextLaunchHomeDisplayId(I)I
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 132
    return p1
.end method

.method protected notifyLaunchingState(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "currentDisplayId"    # I

    .prologue
    .line 165
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performAllTaskViewsDismissed()V

    .line 267
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performTaskViewClicked()V

    .line 239
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChanged"    # Z

    .prologue
    .line 373
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method protected abstract performAllTaskViewsDismissed()V
.end method

.method protected abstract performDismiss()V
.end method

.method protected abstract performDismissRecentsToCloseAll(ZZ)V
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZ)Z
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
.end method

.method protected abstract performTaskViewClicked()V
.end method

.method protected abstract requestFocusNextTask()V
.end method

.method protected requestOrientationSync(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "instance"    # Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    if-nez v6, :cond_0

    const-string v6, "window"

    invoke-virtual {p2, v6}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    .line 60
    :cond_0
    if-eqz p1, :cond_2

    .line 61
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 62
    .local v3, "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v3, :cond_1

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 66
    .local v4, "mainOrienation":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 67
    .local v5, "subOrientation":I
    if-eq v4, v5, :cond_1

    .line 68
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 69
    iget-object v6, v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    .line 87
    .end local v3    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .end local v4    # "mainOrienation":I
    .end local v5    # "subOrientation":I
    :cond_1
    return-void

    .line 72
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 73
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 75
    .local v0, "N":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 76
    .restart local v4    # "mainOrienation":I
    move v5, v4

    .line 77
    .restart local v5    # "subOrientation":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 78
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    sget-object v7, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 80
    .local v1, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 81
    if-eq v4, v5, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 82
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 83
    iget-object v6, p2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method requestUpdateMainRecentsLayout()V
    .locals 17

    .prologue
    .line 295
    sget-object v15, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v15

    .line 296
    :try_start_0
    const-string v14, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 297
    .local v6, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    .line 298
    .local v5, "displays":[Landroid/view/Display;
    const/4 v2, 0x1

    .line 299
    .local v2, "allTaskRemoved":Z
    move-object v3, v5

    .local v3, "arr$":[Landroid/view/Display;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v4, v3, v8

    .line 300
    .local v4, "display":Landroid/view/Display;
    sget-object v14, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 301
    .local v1, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v1, :cond_1

    .line 302
    check-cast v1, Lcom/android/systemui/recents/RecentsActivity;

    .end local v1    # "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    iget-object v13, v1, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 303
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    if-eqz v13, :cond_1

    .line 304
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 305
    .local v11, "numStacks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_1

    .line 306
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    .line 307
    .local v12, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v14

    if-eqz v14, :cond_0

    .line 308
    const/4 v2, 0x0

    .line 305
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 299
    .end local v7    # "i":I
    .end local v11    # "numStacks":I
    .end local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 314
    .end local v4    # "display":Landroid/view/Display;
    :cond_2
    sget-object v14, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 315
    .local v10, "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v10, :cond_3

    .line 316
    if-eqz v2, :cond_4

    .line 317
    check-cast v10, Lcom/android/systemui/recents/RecentsActivity;

    .end local v10    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/android/systemui/recents/RecentsActivity;->updateMainRecentsLayout(Z)V

    .line 322
    :cond_3
    :goto_2
    monitor-exit v15

    .line 323
    return-void

    .line 319
    .restart local v10    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_4
    check-cast v10, Lcom/android/systemui/recents/RecentsActivity;

    .end local v10    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/systemui/recents/RecentsActivity;->updateMainRecentsLayout(Z)V

    goto :goto_2

    .line 322
    .end local v2    # "allTaskRemoved":Z
    .end local v3    # "arr$":[Landroid/view/Display;
    .end local v5    # "displays":[Landroid/view/Display;
    .end local v6    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method protected resetRequestedOrientationIfNeeded()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->setRequestedOrientation(I)V

    .line 112
    :cond_0
    return-void
.end method
