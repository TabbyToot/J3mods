.class Lcom/android/systemui/statusbar/policy/DateView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$2;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$2;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 149
    return-void
.end method
