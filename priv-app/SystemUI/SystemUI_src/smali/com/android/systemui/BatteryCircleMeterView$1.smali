.class Lcom/android/systemui/BatteryCircleMeterView$1;
.super Ljava/lang/Object;
.source "BatteryCircleMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryCircleMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryCircleMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryCircleMeterView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/BatteryCircleMeterView$1;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView$1;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mActivated:Z
    invoke-static {v0}, Lcom/android/systemui/BatteryCircleMeterView;->access$000(Lcom/android/systemui/BatteryCircleMeterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView$1;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    # getter for: Lcom/android/systemui/BatteryCircleMeterView;->mAttached:Z
    invoke-static {v0}, Lcom/android/systemui/BatteryCircleMeterView;->access$100(Lcom/android/systemui/BatteryCircleMeterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/BatteryCircleMeterView$1;->this$0:Lcom/android/systemui/BatteryCircleMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryCircleMeterView;->invalidate()V

    .line 102
    :cond_0
    return-void
.end method
