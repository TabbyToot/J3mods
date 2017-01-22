.class Lcom/android/systemui/qs/tiles/MobileDataTile$19;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1062
    const-string v0, "MobileDataTile"

    const-string v1, "onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 1066
    return-void
.end method
