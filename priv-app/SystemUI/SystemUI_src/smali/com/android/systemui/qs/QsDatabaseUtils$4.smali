.class Lcom/android/systemui/qs/QsDatabaseUtils$4;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QsDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIconIfNeeded()V
    invoke-static {v0}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$500(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcRelianceIconIfNeeded()V
    invoke-static {v0}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$600(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    .line 649
    return-void
.end method
