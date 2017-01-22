.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SViewCoverLauncher"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 0
    .param p1, "covered"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 33
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 45
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 30
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
