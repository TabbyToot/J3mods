.class Lcom/android/systemui/volume/VolumePanel$SafetyWarning;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafetyWarning"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mNewVolumeUp:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePanel:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumePanel"    # Lcom/android/systemui/volume/VolumePanel;
    .param p3, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 342
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;-><init>(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    .line 292
    iput-object p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v3, 0x1040013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    const/4 v2, -0x2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 299
    invoke-virtual {p0, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 335
    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 336
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$300(Lcom/android/systemui/volume/VolumePanel;J)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->updateStates()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$400(Lcom/android/systemui/volume/VolumePanel;)V

    .line 340
    return-void

    .line 337
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 326
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    .line 332
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 307
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mNewVolumeUp:Z

    .line 310
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 315
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mNewVolumeUp:Z

    if-eqz v0, :cond_1

    .line 316
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "Confirmed warning via VOLUME_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->dismiss()V

    .line 320
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
