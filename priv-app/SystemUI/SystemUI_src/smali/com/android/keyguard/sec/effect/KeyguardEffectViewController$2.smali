.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->resetPreviewView()V

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1102(J)J

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->screenTurnedOff()V

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateIsAdminWallpaper()V

    .line 346
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->screenTurnedOn()V

    .line 330
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 310
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->unbindWallpaperService()V

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    .line 325
    return-void
.end method
