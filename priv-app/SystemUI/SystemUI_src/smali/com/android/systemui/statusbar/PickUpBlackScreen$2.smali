.class Lcom/android/systemui/statusbar/PickUpBlackScreen$2;
.super Landroid/os/Handler;
.source "PickUpBlackScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/PickUpBlackScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x3

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "mHandler  -   VIBRATE_RUN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$300(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Vibrator;

    move-result-object v0

    const v1, 0xc36f

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$100(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "mHandler  -   MESSAGE_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # invokes: Lcom/android/systemui/statusbar/PickUpBlackScreen;->sound()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$400(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$100(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$002(Lcom/android/systemui/statusbar/PickUpBlackScreen;Z)Z

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "Screen 0n~ "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->setResult(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->finish()V

    goto :goto_0

    .line 114
    :pswitch_5
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "dismiss popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 120
    :pswitch_6
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "CHECK_USER_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->finish()V

    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
