.class Lcom/android/systemui/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$launchOpts:Landroid/app/ActivityOptions;

.field final synthetic val$lockToTask:Z

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-boolean p5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "currentActive":Z
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v5, :cond_1

    .line 712
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 713
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_1

    .line 714
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 715
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v5, v6, :cond_0

    .line 716
    const/4 v0, 0x1

    .line 722
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    if-eqz v0, :cond_4

    .line 744
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 777
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v5, :cond_3

    .line 784
    :cond_3
    return-void

    .line 749
    :cond_4
    const/4 v3, 0x0

    .line 755
    .local v3, "success":Z
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v3

    .line 757
    if-eqz v3, :cond_5

    .line 759
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    if-eqz v5, :cond_2

    .line 760
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v5}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onScreenPinningRequest()V

    goto :goto_0

    .line 765
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 766
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v5, :cond_2

    .line 767
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v5}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskLaunchFailed()V

    goto :goto_0
.end method
