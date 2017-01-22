.class Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;
.super Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;
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
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCommand(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 149
    const-string v0, "KeyguardWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardWallpaperService executeCommand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called, displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->checkPermission()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 192
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "KeyguardWallpaperService getUnlockDelay called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$800(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "KeyguardWallpaperService handleUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void

    .line 160
    :pswitch_1
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "KeyguardWallpaperService sendTouchEvent called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "displayId"    # I

    .prologue
    .line 171
    const-string v0, "KeyguardWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardWallpaperService setContextualWallpaper called, displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 198
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "KeyguardWallpaperService setKeyguardWallpaperShowCallback called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # setter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$902(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Lcom/android/internal/policy/IKeyguardShowCallback;)Lcom/android/internal/policy/IKeyguardShowCallback;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShownOnce:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;I)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "displayId"    # I

    .prologue
    .line 183
    const-string v1, "KeyguardWallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardWallpaperService showUnlockAffordance called, displayId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "startDelay"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v1, "rect"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method
