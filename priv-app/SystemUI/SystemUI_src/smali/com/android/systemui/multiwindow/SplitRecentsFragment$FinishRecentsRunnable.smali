.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "SplitRecentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 162
    iput-object p3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    .line 163
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 170
    # invokes: Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->access$000(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    # setter for: Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z
    invoke-static {v1, v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->access$102(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Z)Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0042

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
