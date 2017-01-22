.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$bottomView:Landroid/view/View;

.field final synthetic val$clockView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$clockView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$bottomView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3940
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "screenCapture for lockscreen preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/keyguard/ViewCaptureUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$clockView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$bottomView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->screenCapture(Landroid/view/View;Landroid/view/View;Z)V

    .line 3943
    return-void

    .line 3941
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
