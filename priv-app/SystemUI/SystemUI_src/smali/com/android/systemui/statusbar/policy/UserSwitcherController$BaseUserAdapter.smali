.class public abstract Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 524
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 526
    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 531
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 533
    .local v3, "secureKeyguardShowing":Z
    :goto_0
    if-nez v3, :cond_2

    .line 534
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 546
    :cond_0
    return v1

    .line 531
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 537
    .restart local v3    # "secureKeyguardShowing":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    .local v0, "N":I
    const/4 v1, 0x0

    .line 539
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 540
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-nez v4, :cond_0

    .line 543
    add-int/lit8 v1, v1, 0x1

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 581
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v2, :cond_0

    .line 582
    const v2, 0x7f020067

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 588
    :goto_0
    return-object v2

    .line 585
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getAvatarSize()I

    move-result v0

    .line 586
    .local v0, "avatarSize":I
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v2, :cond_1

    const/16 v2, -0x2710

    :goto_1
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 588
    .local v1, "mDefault":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v0, v0}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 586
    .end local v1    # "mDefault":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 556
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 564
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_1

    .line 565
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 566
    const v0, 0x7f0a0319

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 571
    :cond_0
    const v0, 0x7f0a0317

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_1
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_2

    .line 574
    const v0, 0x7f0a0315

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 593
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 561
    return-void
.end method
