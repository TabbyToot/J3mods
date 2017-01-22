.class Lcom/android/systemui/qs/tiles/UDSTile$6;
.super Ljava/lang/Object;
.source "UDSTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;->displaydialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$6;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$302(Z)Z

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.app.datausage.intent.action.launch_notification_panel_cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile$6;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1100(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    return-void
.end method
