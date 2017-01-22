.class Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUnlockViewSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockViewSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockViewSub;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mShowing:Z

    if-eq v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockViewSub;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

    iput-boolean p1, v0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mShowing:Z

    .line 274
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
