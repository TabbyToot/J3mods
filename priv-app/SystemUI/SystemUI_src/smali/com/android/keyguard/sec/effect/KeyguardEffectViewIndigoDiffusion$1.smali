.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    if-ne p1, v3, :cond_2

    .line 159
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V

    goto :goto_0

    .line 169
    :cond_2
    if-nez p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iput v2, v0, Landroid/os/Message;->what:I

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
