.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;
.super Landroid/os/Handler;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->handleUserActivityTimeoutChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
