.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;
.super Ljava/lang/Object;
.source "MSimNetworkControllerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->showDatakeyPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 5226
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5232
    :cond_0
    return-void
.end method
