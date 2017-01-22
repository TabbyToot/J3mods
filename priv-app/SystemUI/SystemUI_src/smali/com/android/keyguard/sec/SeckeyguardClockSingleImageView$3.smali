.class Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SeckeyguardClockSingleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->updateClockTime()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    .line 261
    return-void
.end method
