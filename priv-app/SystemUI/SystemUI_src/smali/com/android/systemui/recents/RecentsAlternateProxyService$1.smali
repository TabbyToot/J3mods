.class Lcom/android/systemui/recents/RecentsAlternateProxyService$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsAlternateProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsAlternateProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.intent.action.REMOVE_ALL_TASKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "RecentsAlternateProxyService"

    const-string v2, "clearAllCache is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearAllCache()V

    .line 62
    :cond_0
    return-void
.end method
