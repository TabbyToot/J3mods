.class Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;
.super Landroid/os/Handler;
.source "KeyguardWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 75
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleExecuteCommand(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$000(Lcom/android/systemui/keyguard/KeyguardWallpaperService;II)V

    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleSendTouchEvent(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$100(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleSetContextualWallpaper(Landroid/graphics/Bitmap;I)V
    invoke-static {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$200(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 84
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleHandleUnlock(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$300(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 87
    :sswitch_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleShowUnlockAffordance(Landroid/os/Bundle;I)V
    invoke-static {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$400(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 90
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleOnShown()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$500(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V

    goto :goto_0

    .line 93
    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # invokes: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleReleaseWakelock()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$600(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method
