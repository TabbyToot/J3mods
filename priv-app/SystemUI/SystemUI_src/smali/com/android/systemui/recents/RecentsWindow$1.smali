.class Lcom/android/systemui/recents/RecentsWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsWindow;
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
    .line 267
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "Recents_Window"

    const-string v3, "mSystemBroadcastReceiver - ACTION_LOCALE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsWindow;->access$200(Lcom/android/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsWindow;->access$200(Lcom/android/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flip_font_style"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 276
    .local v1, "flipFont":I
    const-string v2, "Recents_Window"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I
    invoke-static {v4}, Lcom/android/systemui/recents/RecentsWindow;->access$300(Lcom/android/systemui/recents/RecentsWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # getter for: Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsWindow;->access$300(Lcom/android/systemui/recents/RecentsWindow;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    # setter for: Lcom/android/systemui/recents/RecentsWindow;->mFlipFont:I
    invoke-static {v2, v1}, Lcom/android/systemui/recents/RecentsWindow;->access$302(Lcom/android/systemui/recents/RecentsWindow;I)I

    .line 287
    .end local v1    # "flipFont":I
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const-string v2, "Recents_Window"

    const-string v3, "ACTION_OFF is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsWindow;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 285
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/RecentsWindow;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsWindow;->dismiss()V

    goto :goto_0
.end method
