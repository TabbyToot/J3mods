.class Lcom/android/systemui/qs/tiles/BluetoothTile$3;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 373
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBTState:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBTState:I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$002(Lcom/android/systemui/qs/tiles/BluetoothTile;I)I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBTState:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)I

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/BluetoothTile;->getBluetoothState(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)V

    .line 379
    const-string v0, "BluetoothTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT check after after 1000ms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui/qs/tiles/BluetoothTile;->mBTState:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    return-void
.end method
