.class Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;
.super Ljava/lang/Object;
.source "KeyguardWallpaperService.java"

# interfaces
.implements Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;


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
    .line 250
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 5

    .prologue
    const/16 v4, 0x2bc

    .line 253
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShownOnce:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShownOnce:Z

    .line 256
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    # getter for: Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    :cond_0
    return-void
.end method
