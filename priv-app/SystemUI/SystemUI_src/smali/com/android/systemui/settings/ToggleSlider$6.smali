.class Lcom/android/systemui/settings/ToggleSlider$6;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z
    invoke-static {v1, p3}, Lcom/android/systemui/settings/ToggleSlider;->access$2302(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 553
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->settedValue:I
    invoke-static {v1, p2}, Lcom/android/systemui/settings/ToggleSlider;->access$2402(Lcom/android/systemui/settings/ToggleSlider;I)I

    .line 554
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v3, v4, v1, p2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 566
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 571
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v1, :cond_3

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 573
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 574
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 579
    .end local v0    # "isChecked":Z
    :cond_3
    return-void

    .line 558
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v6}, Lcom/android/systemui/settings/ToggleSlider;->access$1702(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 585
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 590
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    .line 591
    # getter for: Lcom/android/systemui/settings/ToggleSlider;->ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$800()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/settings/ToggleSeekBar;->setPressed(Z)V

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 603
    :cond_3
    return-void

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1702(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 609
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1700(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setPressed(Z)V

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 621
    :cond_2
    return-void

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$6;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0
.end method
