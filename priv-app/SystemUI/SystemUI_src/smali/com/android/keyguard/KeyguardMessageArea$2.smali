.class Lcom/android/keyguard/KeyguardMessageArea$2;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->resetShortcutReleasedLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$100(Lcom/android/keyguard/KeyguardMessageArea;)V

    .line 151
    return-void
.end method