.class Lcom/android/systemui/recents/RecentsActivity$8;
.super Landroid/database/ContentObserver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2214
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->access$000(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    .line 2216
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2217
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 2218
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 2219
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 2221
    :cond_1
    return-void
.end method
