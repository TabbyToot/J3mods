.class public Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
.super Ljava/lang/Object;
.source "LayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/LayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityReport"
.end annotation


# instance fields
.field public numVisibleTasks:I

.field public numVisibleThumbnails:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/LayoutAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/LayoutAlgorithm;II)V
    .locals 0
    .param p2, "tasks"    # I
    .param p3, "thumbnails"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;->this$0:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    .line 49
    iput p3, p0, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    .line 50
    return-void
.end method
