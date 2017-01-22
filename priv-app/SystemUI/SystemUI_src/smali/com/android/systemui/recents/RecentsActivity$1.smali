.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "action":Ljava/lang/String;
    const-string v5, "action_hide_recents_activity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    const-string v5, "recents.triggeredFromAltTab"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v5, "recents.triggeredFromHomeKey"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    goto :goto_0

    .line 356
    :cond_3
    const-string v5, "action_toggle_recents_activity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 367
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    .line 371
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0

    .line 373
    :cond_5
    const-string v5, "action_start_enter_animation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "action_start_enter_animation_sub_recents"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-eqz v5, :cond_7

    .line 379
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity$1;->setResultCode(I)V

    goto :goto_0

    .line 382
    :cond_7
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    if-eqz v5, :cond_9

    move v2, v3

    .line 383
    .local v2, "showRecentBtns":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 386
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 387
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/recents/RecentsActivity;->access$000(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050072

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 389
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 397
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity$1;->setResultCode(I)V

    goto/16 :goto_0

    .end local v2    # "showRecentBtns":Z
    :cond_9
    move v2, v4

    .line 382
    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_1
.end method
