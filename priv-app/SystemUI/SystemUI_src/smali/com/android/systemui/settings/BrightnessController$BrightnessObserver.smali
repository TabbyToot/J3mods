.class Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_AUTO_DETAIL:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final EMERGENCY_MODE_URI:Landroid/net/Uri;

.field private final HBM_PMS_ENTER:Landroid/net/Uri;

.field private final HBM_USER_ENABLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 104
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 95
    const-string v0, "auto_brightness_detail"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_AUTO_DETAIL:Landroid/net/Uri;

    .line 96
    const-string v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "high_brightness_mode_pms_enter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->HBM_PMS_ENTER:Landroid/net/Uri;

    .line 99
    const-string v0, "high_brightness_mode_user_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->HBM_USER_ENABLE:Landroid/net/Uri;

    .line 101
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 105
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 110
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 114
    if-eqz p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v3}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 117
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)V

    .line 119
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateTwSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)V

    .line 146
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 147
    .local v0, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 150
    .end local v0    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v2

    .line 121
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_AUTO_DETAIL:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateTwSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V

    .line 129
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$500(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->HBM_PMS_ENTER:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateHbmPMSEnter()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->HBM_USER_ENABLE:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateHbmUserEnable()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 138
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateEmergencyMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)V

    goto/16 :goto_1

    .line 143
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 150
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v4}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    goto/16 :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 155
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1100(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_AUTO_DETAIL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1100(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    :cond_2
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 188
    return-void
.end method
