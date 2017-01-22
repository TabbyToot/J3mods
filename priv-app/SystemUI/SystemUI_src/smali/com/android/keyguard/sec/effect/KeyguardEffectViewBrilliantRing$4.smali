.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "BrilliantRing sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 430
    return-void
.end method
