.class Lcom/android/systemui/SwipeHelper$7;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$7;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$7;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$7;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->access$600(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    .line 851
    return-void
.end method
