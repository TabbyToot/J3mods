.class final Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsWindow;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsWindow;Lcom/android/systemui/recents/RecentsWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsWindow;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsWindow$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsWindow;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    if-eqz v1, :cond_0

    .line 454
    const-string v1, "Recents_Window"

    const-string v2, "OnClickRemoveAllButton is blocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    .line 459
    const-string v1, "Recents_Window"

    const-string v2, "OnClickRemoveAllButton"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recents/RecentsWindow;->access$200(Lcom/android/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 463
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, -0x1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 465
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsWindow$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    goto :goto_0
.end method
