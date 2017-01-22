.class Lcom/android/systemui/statusbar/PickUpTutorial$1;
.super Landroid/os/Handler;
.source "PickUpTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/PickUpTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PickUpTutorial;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :pswitch_1
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - VIBRATE_RUN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Vibrator;

    move-result-object v1

    const v2, 0xc36f

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto :goto_0

    .line 159
    :pswitch_2
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$102(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.pickuptutorial.PICKUPBLACKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # setter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$102(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z

    goto :goto_0

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_OFF_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 185
    :pswitch_5
    const-string v1, "STATUSBAR-PickUpTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler - LCD_ON_STATE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # operator++ for: Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$608(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mCount > 3 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # getter for: Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    # invokes: Lcom/android/systemui/statusbar/PickUpTutorial;->tryPickUpDialog()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
