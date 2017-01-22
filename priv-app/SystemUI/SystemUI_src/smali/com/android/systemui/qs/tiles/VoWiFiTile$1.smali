.class final Lcom/android/systemui/qs/tiles/VoWiFiTile$1;
.super Ljava/lang/Object;
.source "VoWiFiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleVoWifi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 274
    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateVoWifiIfNeeded()V
    invoke-static {}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1400()V

    .line 275
    return-void
.end method
