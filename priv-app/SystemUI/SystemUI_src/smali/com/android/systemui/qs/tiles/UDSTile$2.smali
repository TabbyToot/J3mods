.class Lcom/android/systemui/qs/tiles/UDSTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "UDSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    const-string v1, "UDSTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIRPLANE_MODE_ON handleValueChanged value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "UDSTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIRPLANE_MODE_ON handleValueChanged before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/UDSTile;->access$700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "UDSTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIRPLANE_MODE_ON handleValueChanged current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 140
    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$302(Z)Z

    .line 142
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$702(Z)Z

    .line 144
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    .line 150
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.app.datausage.intent.action.launch_notification_panel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DataMonitor"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$800(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    const-string v1, "UDSTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIRPLANE_MODE_ON handleValueChanged sendBroadcast DataMonitor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/UDSTile;->access$700()Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    goto :goto_0
.end method
