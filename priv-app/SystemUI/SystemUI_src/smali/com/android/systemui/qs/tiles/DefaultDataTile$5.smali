.class Lcom/android/systemui/qs/tiles/DefaultDataTile$5;
.super Landroid/os/Handler;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 295
    const-string v0, "DefaultDataTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$902(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$902(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$902(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
