.class Lcom/android/systemui/statusbar/BaseStatusBar$9;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$keyguardShowing:Z

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$appUid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1866
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$9;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1892
    :goto_0
    return v2

    .line 1890
    :cond_0
    const-string v0, "StatusBar"

    const-string v1, "cancels the panel collapse on startNotificationGutsIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
