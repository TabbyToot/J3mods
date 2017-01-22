.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected setChargerAnimationViewVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 32
    return-void
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .prologue
    .line 29
    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 35
    return-void
.end method

.method protected startChargerAnimation(IIZ)V
    .locals 0
    .param p1, "chargerType"    # I
    .param p2, "currentBatteryLevel"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 38
    return-void
.end method

.method protected stopChargerAnimation()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
