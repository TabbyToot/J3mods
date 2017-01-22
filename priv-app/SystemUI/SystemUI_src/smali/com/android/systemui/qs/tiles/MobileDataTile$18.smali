.class Lcom/android/systemui/qs/tiles/MobileDataTile$18;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 863
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1002(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 867
    return-void
.end method
