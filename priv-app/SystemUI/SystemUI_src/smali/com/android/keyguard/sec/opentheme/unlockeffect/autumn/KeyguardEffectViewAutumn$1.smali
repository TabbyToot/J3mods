.class Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewAutumn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;

    # getter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;

    # getter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;

    # setter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->access$002(Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;

    # setter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;->access$102(Lcom/android/keyguard/sec/opentheme/unlockeffect/autumn/KeyguardEffectViewAutumn;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 89
    return-void
.end method
