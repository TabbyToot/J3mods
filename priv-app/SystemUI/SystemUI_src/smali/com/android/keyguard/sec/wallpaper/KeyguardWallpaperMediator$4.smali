.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardWallpaperMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "reason":I
    if-lez v0, :cond_0

    .line 146
    const-string v1, "KeyguardWallpaperMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmergencyMode intent is received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V
    invoke-static {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    .line 154
    .end local v0    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v0    # "reason":I
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V
    invoke-static {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    goto :goto_0
.end method
