.class Lcom/android/systemui/power/PowerUI$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v0, v2, v3}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;J)J

    .line 299
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$202(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 300
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v2, -0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v0, v2, v3}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;J)J

    .line 293
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$202(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 294
    return-void
.end method
