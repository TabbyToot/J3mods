.class Lcom/android/systemui/volume/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$702(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;Z)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1002(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 406
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 407
    return-void
.end method
