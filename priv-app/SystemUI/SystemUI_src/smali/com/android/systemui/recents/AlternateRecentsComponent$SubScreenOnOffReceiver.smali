.class Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 260
    const-string v4, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    sget-boolean v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsVisible:Z

    if-eqz v4, :cond_0

    .line 262
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 263
    .local v1, "isTopTaskSubHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v4, v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 264
    .local v2, "subTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v4, v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 265
    .local v0, "isSubRecentsTopMost":Z
    :goto_0
    if-nez v0, :cond_0

    .line 266
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$SubScreenOnOffReceiver;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 270
    .end local v0    # "isSubRecentsTopMost":Z
    .end local v1    # "isTopTaskSubHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v2    # "subTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-void

    .line 264
    .restart local v1    # "isTopTaskSubHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v2    # "subTopTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
