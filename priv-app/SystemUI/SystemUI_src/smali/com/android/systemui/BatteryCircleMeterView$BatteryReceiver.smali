.class Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryCircleMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryCircleMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryCircleMeterView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryCircleMeterView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryCircleMeterView;Lcom/android/systemui/BatteryCircleMeterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/BatteryCircleMeterView;
    .param p2, "x1"    # Lcom/android/systemui/BatteryCircleMeterView$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;-><init>(Lcom/android/systemui/BatteryCircleMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    const-string v4, "level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/BatteryCircleMeterView;->mLevel:I
    invoke-static {v2, v4}, Lcom/android/systemui/BatteryCircleMeterView;->access$202(Lcom/android/systemui/BatteryCircleMeterView;I)I

    .line 113
    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    # setter for: Lcom/android/systemui/BatteryCircleMeterView;->mIsCharging:Z
    invoke-static {v4, v2}, Lcom/android/systemui/BatteryCircleMeterView;->access$302(Lcom/android/systemui/BatteryCircleMeterView;Z)Z

    .line 115
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z
    invoke-static {v2}, Lcom/android/systemui/BatteryCircleMeterView;->access$000(Lcom/android/systemui/BatteryCircleMeterView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v2}, Lcom/android/systemui/BatteryCircleMeterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 117
    .local v1, "l":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I
    invoke-static {v2}, Lcom/android/systemui/BatteryCircleMeterView;->access$400(Lcom/android/systemui/BatteryCircleMeterView;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mIsDocked:Z
    invoke-static {v4}, Lcom/android/systemui/BatteryCircleMeterView;->access$500(Lcom/android/systemui/BatteryCircleMeterView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mCircleSize:I
    invoke-static {v3}, Lcom/android/systemui/BatteryCircleMeterView;->access$400(Lcom/android/systemui/BatteryCircleMeterView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryCircleMeterView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryCircleMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/android/systemui/BatteryCircleMeterView$BatteryReceiver;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v2}, Lcom/android/systemui/BatteryCircleMeterView;->invalidate()V

    .line 124
    .end local v1    # "l":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 113
    goto :goto_0
.end method
