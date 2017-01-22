.class Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;
.super Landroid/os/AsyncTask;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->onTaskStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field final synthetic val$topActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->val$topActivity:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$102(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z

    .line 237
    const-string v1, "ViewCaptureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->val$topActivity:Ljava/lang/String;

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->access$200(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$400(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v5

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$700(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "captured":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$800()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$900(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # setter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$502(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # setter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$602(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 256
    :cond_2
    return-object v6
.end method
