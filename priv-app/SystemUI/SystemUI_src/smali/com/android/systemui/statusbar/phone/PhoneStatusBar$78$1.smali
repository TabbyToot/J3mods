.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->onDoneButtonClicked(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;)V
    .locals 0

    .prologue
    .line 9579
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 9583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    .line 9584
    return-void
.end method
