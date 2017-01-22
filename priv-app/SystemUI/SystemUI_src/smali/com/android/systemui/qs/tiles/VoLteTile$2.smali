.class Lcom/android/systemui/qs/tiles/VoLteTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$202(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$200(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDeregVolteInDataOff:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSDeregister(Landroid/content/Context;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$500(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    .line 109
    :goto_1
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    goto :goto_1
.end method
