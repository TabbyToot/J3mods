.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string v0, "KeyguardPreviewContainer"

    const-string v1, "Animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iput v2, v0, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    .line 326
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 316
    const-string v0, "KeyguardPreviewContainer"

    const-string v1, "Animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewEnabled(Z)V

    .line 318
    return-void
.end method
