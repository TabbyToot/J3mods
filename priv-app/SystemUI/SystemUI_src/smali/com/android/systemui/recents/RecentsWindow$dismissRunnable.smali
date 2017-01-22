.class Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dismissRunnable"
.end annotation


# instance fields
.field target:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsWindow;Landroid/app/Dialog;)V
    .locals 1
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->target:Landroid/app/Dialog;

    .line 230
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->target:Landroid/app/Dialog;

    .line 231
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->target:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->target:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recents/RecentsWindow;->dismissAnimationTriggered:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsWindow;->access$102(Lcom/android/systemui/recents/RecentsWindow;Z)Z

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsWindow;->access$200(Lcom/android/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$dismissRunnable;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    .line 241
    :cond_1
    return-void
.end method
