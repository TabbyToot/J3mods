.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatterySettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 419
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 420
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "status_bar_battery"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 517
    const-string v1, "status_bar_battery_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 520
    const-string v1, "status_bar_battery_text_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 523
    const-string v1, "status_bar_battery_text_charging_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 526
    const-string v1, "status_bar_circle_battery_animationspeed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->update()V

    .line 545
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatterySettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateBatteryIcons()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$77000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method
