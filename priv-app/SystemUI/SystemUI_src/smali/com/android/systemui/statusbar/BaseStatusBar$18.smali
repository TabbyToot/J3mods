.class Lcom/android/systemui/statusbar/BaseStatusBar$18;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 3190
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3192
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$18$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$18$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$18;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$18$1;->start()V

    .line 3226
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 3228
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 3230
    return v2
.end method
