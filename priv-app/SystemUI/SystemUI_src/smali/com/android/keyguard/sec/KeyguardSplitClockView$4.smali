.class Lcom/android/keyguard/sec/KeyguardSplitClockView$4;
.super Landroid/database/ContentObserver;
.source "KeyguardSplitClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSplitClockView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x65

    .line 167
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 168
    if-nez p2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v0, "lock_screen_show_clock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lock_show_info"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$400(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$400(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$400(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$400(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
