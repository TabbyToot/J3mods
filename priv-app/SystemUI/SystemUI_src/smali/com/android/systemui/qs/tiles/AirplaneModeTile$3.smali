.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;
.super Landroid/database/ContentObserver;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    const-string v0, "AirplaneModeTile"

    const-string v1, "mdsNetworkObserver changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 138
    const-string v0, "AirplaneModeTile"

    const-string v1, "DSNETWORK changed to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$102(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$102(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    goto :goto_0
.end method
