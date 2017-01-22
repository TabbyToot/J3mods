.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->beginMoving(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 441
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    const/4 v1, 0x2

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addMovedWindow()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 437
    return-void
.end method
