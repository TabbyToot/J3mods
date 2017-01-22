.class Lcom/android/systemui/recents/RecentsWindow$3;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsWindow;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsWindow;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow$3;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsWindow$3;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    .line 477
    return-void
.end method
