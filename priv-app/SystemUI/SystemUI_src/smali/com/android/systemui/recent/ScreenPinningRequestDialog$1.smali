.class Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/ScreenPinningRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/ScreenPinningRequestDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ScreenPinningRequestDialog;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    # getter for: Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 124
    :cond_1
    return-void
.end method
