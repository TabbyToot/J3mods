.class Lcom/android/systemui/qs/tiles/MobileDataTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 128
    const-string v0, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleValueChanged()  mMobileData(DB) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 130
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_dependent_mobile_settings"

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 134
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 127
    goto :goto_0

    :cond_2
    move v1, v2

    .line 131
    goto :goto_1
.end method
