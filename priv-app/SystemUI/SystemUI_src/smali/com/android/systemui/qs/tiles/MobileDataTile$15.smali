.class Lcom/android/systemui/qs/tiles/MobileDataTile$15;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V
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
    .line 825
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 827
    if-ne p2, v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 833
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    goto :goto_0
.end method
