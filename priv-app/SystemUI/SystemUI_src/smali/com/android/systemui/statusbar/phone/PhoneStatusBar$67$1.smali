.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;)V
    .locals 0

    .prologue
    .line 8366
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    .prologue
    .line 8369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeferedClickTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeferedClickTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 8371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeferedClickTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTile;

    .line 8373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
