.class Lcom/android/systemui/BatteryMeterViewMod$1;
.super Ljava/lang/Object;
.source "BatteryMeterViewMod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterViewMod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterViewMod;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterViewMod;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterViewMod$1;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterViewMod$1;->this$0:Lcom/android/systemui/BatteryMeterViewMod;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterViewMod;->invalidateIfVisible()V

    .line 149
    return-void
.end method
