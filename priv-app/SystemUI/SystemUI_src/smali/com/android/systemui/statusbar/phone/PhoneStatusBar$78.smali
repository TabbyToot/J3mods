.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScanState:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 9557
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 4
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    const/4 v1, 0x0

    .line 9593
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 9595
    .local v0, "showingDetail":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 9597
    if-eqz v0, :cond_0

    .line 9598
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 9599
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$21100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 9601
    :cond_0
    return-void

    .end local v0    # "showingDetail":Z
    :cond_1
    move v0, v1

    .line 9593
    goto :goto_0

    .restart local v0    # "showingDetail":Z
    :cond_2
    move v2, v1

    .line 9595
    goto :goto_1
.end method


# virtual methods
.method public onDoneButtonClicked(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 9579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$21000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 9586
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 9590
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 9566
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 9575
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 9562
    return-void
.end method
