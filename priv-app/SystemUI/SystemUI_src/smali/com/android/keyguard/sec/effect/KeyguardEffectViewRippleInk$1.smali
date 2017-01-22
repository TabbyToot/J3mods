.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

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

    .line 153
    if-ne p1, v3, :cond_2

    .line 155
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V

    goto :goto_0

    .line 165
    :cond_2
    if-nez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iput v2, v0, Landroid/os/Message;->what:I

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
