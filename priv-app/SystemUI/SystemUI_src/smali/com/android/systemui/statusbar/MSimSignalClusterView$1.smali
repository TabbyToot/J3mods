.class Lcom/android/systemui/statusbar/MSimSignalClusterView$1;
.super Ljava/lang/Object;
.source "MSimSignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MSimSignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$002(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)I

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V

    goto :goto_0
.end method
