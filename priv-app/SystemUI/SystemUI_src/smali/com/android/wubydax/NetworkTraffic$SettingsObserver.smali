.class Lcom/android/wubydax/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wubydax/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wubydax/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/wubydax/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/wubydax/NetworkTraffic;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/wubydax/NetworkTraffic;

    .line 388
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 389
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/wubydax/NetworkTraffic;

    # getter for: Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$2100(Lcom/android/wubydax/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_STATE:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 394
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 396
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SHOW_ARROWS:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 402
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 406
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_COLOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 405
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 410
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UNIT:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 409
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 414
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROW_COLOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 418
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_GLOBAL_COLOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$2900()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROWS_POSITION:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$3000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 421
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_TEXT_STYLE:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$3100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 425
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SCALE:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$3200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UPLOAD_COLOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$3300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 433
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    # getter for: Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_DOWNLOAD_COLOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$3400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 437
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 440
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/wubydax/NetworkTraffic;

    # invokes: Lcom/android/wubydax/NetworkTraffic;->updateSettings()V
    invoke-static {v0}, Lcom/android/wubydax/NetworkTraffic;->access$2000(Lcom/android/wubydax/NetworkTraffic;)V

    .line 448
    return-void
.end method

.method unObserve()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/wubydax/NetworkTraffic;

    # getter for: Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/wubydax/NetworkTraffic;->access$2100(Lcom/android/wubydax/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    return-void
.end method
