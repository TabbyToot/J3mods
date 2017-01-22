.class Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;
.super Landroid/database/ContentObserver;
.source "RJILWifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 48
    # getter for: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mrequestfromSystemUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$002(Z)Z

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v1, "RJILWifiCallingTile"

    const-string v2, "mWifiCallingChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_call_enable"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "state":I
    if-ne v0, v4, :cond_1

    .line 57
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state == 1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$200(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state is == 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->access$300(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Ljava/lang/Object;)V

    goto :goto_0
.end method
