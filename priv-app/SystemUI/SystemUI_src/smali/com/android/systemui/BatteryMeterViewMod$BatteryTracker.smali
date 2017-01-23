.class Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterViewMod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterViewMod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# instance fields
.field health:I

.field level:I

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterViewMod;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterViewMod;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->testmode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterViewMod;Lcom/android/systemui/BatteryMeterViewMod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/BatteryMeterViewMod;
    .param p2, "x1"    # Lcom/android/systemui/BatteryMeterViewMod$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterViewMod;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->testmode:Z

    if-eqz v1, :cond_1

    const-string v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/high16 v1, 0x42c80000    # 100.0f

    const-string v4, "level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    .line 122
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugType:I

    .line 123
    iget v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugType:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->plugged:Z

    .line 124
    const-string v1, "health"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->health:I

    .line 126
    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->status:I

    .line 128
    const-string v1, "technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->technology:Ljava/lang/String;

    .line 129
    const-string v1, "voltage"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->voltage:I

    .line 130
    const-string v1, "temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->temperature:I

    .line 132
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    const v4, 0x7f0a025a

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterViewMod;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    invoke-virtual {v1, v3}, Lcom/android/systemui/BatteryMeterViewMod;->updateSettings(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 123
    goto :goto_1

    .line 135
    :cond_3
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->testmode:Z

    .line 137
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    new-instance v2, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker$1;-><init>(Lcom/android/systemui/BatteryMeterViewMod$BatteryTracker;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterViewMod;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
