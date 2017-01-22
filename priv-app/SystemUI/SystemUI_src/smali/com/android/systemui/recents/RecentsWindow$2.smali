.class Lcom/android/systemui/recents/RecentsWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsWindow;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 296
    const-string v1, "recents.triggeredFromHomeKey"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "Recents_Window"

    const-string v2, "Home-key is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v1, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsWindow;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    :cond_0
    return-void
.end method
