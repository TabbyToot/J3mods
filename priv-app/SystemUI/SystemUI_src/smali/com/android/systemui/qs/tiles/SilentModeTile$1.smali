.class Lcom/android/systemui/qs/tiles/SilentModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SilentModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SilentModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$100()I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$002(I)I

    .line 65
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$102(I)I

    .line 67
    const-string v1, "STATUSBAR-SilentModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilentMode onReceive()-SoundProfile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$100()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)I

    .line 76
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    goto :goto_0
.end method
