.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;
.super Landroid/database/ContentObserver;
.source "KeyguardWallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x12f0

    const/16 v4, 0x190

    const/16 v3, 0x12c

    const/16 v2, 0xc8

    .line 133
    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 145
    :cond_4
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "lockscreen_wallpaper_path_sub"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "lockscreen_wallpaper_path_2_sub"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    :cond_5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$500(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 159
    :cond_7
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$602(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 167
    :cond_9
    const-string v0, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
