.class Lcom/android/systemui/statusbar/NotificationContentView$2;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$showContractedChild:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;Z)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$200(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # invokes: Lcom/android/systemui/statusbar/NotificationContentView;->showContractedChild()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$300(Lcom/android/systemui/statusbar/NotificationContentView;)Z

    move-result v0

    .line 250
    .local v0, "currentShowContractedChild":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    if-ne v1, v0, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$200(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 251
    goto :goto_0

    :cond_1
    move v3, v2

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$200(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # getter for: Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$200(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v1, v5

    .line 258
    goto :goto_3

    :cond_4
    move v5, v4

    .line 259
    goto :goto_4

    :cond_5
    move v1, v3

    .line 260
    goto :goto_5

    :cond_6
    move v3, v2

    .line 263
    goto :goto_6
.end method
