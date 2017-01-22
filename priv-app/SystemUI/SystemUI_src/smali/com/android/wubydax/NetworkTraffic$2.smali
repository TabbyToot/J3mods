.class Lcom/android/wubydax/NetworkTraffic$2;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wubydax/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wubydax/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/wubydax/NetworkTraffic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/wubydax/NetworkTraffic$2;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic$2;->this$0:Lcom/android/wubydax/NetworkTraffic;

    # getter for: Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wubydax/NetworkTraffic;->access$1400(Lcom/android/wubydax/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method
