.class Lcom/android/keyguard/sec/AdaptiveEventManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$500(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    :cond_1
    return-void
.end method
