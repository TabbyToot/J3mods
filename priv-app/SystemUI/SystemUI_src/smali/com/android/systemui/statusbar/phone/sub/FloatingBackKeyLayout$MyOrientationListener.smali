.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "FloatingBackKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .line 601
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 602
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 8
    .param p1, "rotation"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 606
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProposedRotationChanged, rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMoveStart(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2102(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-eq v0, p1, :cond_2

    if-eq p1, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 624
    :cond_2
    if-ne p1, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-eq v0, v7, :cond_4

    :cond_3
    if-ne p1, v7, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 625
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V
    invoke-static {v0, p1, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;IZ)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 629
    :cond_5
    if-ne p1, v4, :cond_6

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 633
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 637
    :cond_7
    return-void
.end method
