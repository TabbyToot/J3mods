.class Lcom/android/systemui/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field online:I

.field percentStr:Ljava/lang/String;

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/BatteryMeterView;
    .param p2, "x1"    # Lcom/android/systemui/BatteryMeterView$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 136
    iget-boolean v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v6, :cond_1

    const-string v6, "testmode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const/high16 v6, 0x42c80000    # 100.0f

    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v1, v6

    .line 143
    .local v1, "battLevel":I
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    if-eq v6, v1, :cond_8

    move v3, v7

    .line 144
    .local v3, "levelChange":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 145
    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 147
    :cond_2
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_9

    move v4, v7

    .line 148
    .local v4, "plugTypeChange":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 149
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    .line 150
    :cond_3
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-eqz v6, :cond_a

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 152
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    const-string v9, "health"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_b

    move v2, v7

    .line 154
    .local v2, "healthChange":Z
    :goto_4
    if-eqz v2, :cond_4

    .line 155
    const-string v6, "health"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    .line 158
    :cond_4
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const-string v9, "status"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_c

    move v5, v7

    .line 160
    .local v5, "statusChange":Z
    :goto_5
    if-eqz v5, :cond_5

    .line 161
    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    .line 164
    :cond_5
    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    .line 165
    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->voltage:I

    .line 166
    const-string v6, "temperature"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->temperature:I

    .line 168
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-eqz v6, :cond_6

    .line 169
    const-string v6, "online"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    .line 172
    :cond_6
    sget-object v6, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_BATTERY_CHANGED : level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " health:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    if-eqz v5, :cond_0

    .line 174
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    const v9, 0x7f0a025a

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$000(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$000(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    .end local v5    # "statusChange":Z
    :cond_8
    move v3, v8

    .line 143
    goto/16 :goto_1

    .restart local v3    # "levelChange":Z
    :cond_9
    move v4, v8

    .line 147
    goto/16 :goto_2

    .restart local v4    # "plugTypeChange":Z
    :cond_a
    move v6, v8

    .line 150
    goto/16 :goto_3

    :cond_b
    move v2, v8

    .line 152
    goto/16 :goto_4

    .restart local v2    # "healthChange":Z
    :cond_c
    move v5, v8

    .line 158
    goto/16 :goto_5

    .line 181
    .end local v1    # "battLevel":I
    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    :cond_d
    const-string v6, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 183
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v7, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
