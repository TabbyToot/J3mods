.class Lcom/android/keyguard/sec/SecKeyguardClockView$3;
.super Ljava/lang/Object;
.source "SecKeyguardClockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateContainer(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 131
    return-void
.end method

.method public updateWeatherContainerVisible(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    const/16 v2, 0x12cb

    .line 133
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->isShowingWeatherInfo()Z

    move-result v0

    .line 134
    .local v0, "isWeatherVisible":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_2

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$602(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    :cond_2
    return-void
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    .line 130
    return-void
.end method
