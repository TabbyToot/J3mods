.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->dismissWithAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
