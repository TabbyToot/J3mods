.class Lcom/android/systemui/qs/tiles/BluetoothTile$2;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPairedDevicesChanged()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BluetoothTile$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$2$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    const-string v0, "BluetoothTile"

    const-string v1, " onBluetoothPairedDevicesChanged:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # invokes: Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    .line 361
    return-void
.end method

.method public onBluetoothStateChange(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "connecting"    # Z

    .prologue
    .line 347
    const-string v0, "BluetoothTile"

    const-string v1, " onBluetoothStateChange:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # invokes: Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    .line 349
    return-void
.end method
