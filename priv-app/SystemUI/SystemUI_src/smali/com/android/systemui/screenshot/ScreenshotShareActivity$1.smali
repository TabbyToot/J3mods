.class Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShareActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShareActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startChooserActivity()V

    .line 67
    return-void
.end method
