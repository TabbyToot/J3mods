.class Lcom/android/systemui/recents/RecentsActivity$10;
.super Landroid/view/OrientationEventListener;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->registerRotationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevAngle:I

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2271
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 2275
    iget v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    if-eq v0, p1, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    .line 2280
    const/16 v0, 0x2d

    if-gt v0, p1, :cond_1

    const/16 v0, 0x87

    if-ge p1, v0, :cond_1

    .line 2281
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    const/16 v0, 0xe1

    if-gt v0, p1, :cond_0

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    goto :goto_0
.end method
