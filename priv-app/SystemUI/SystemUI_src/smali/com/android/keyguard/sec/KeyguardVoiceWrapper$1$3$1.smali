.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;->this$2:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;->this$2:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;->this$2:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$600(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;->this$2:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardVoiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
