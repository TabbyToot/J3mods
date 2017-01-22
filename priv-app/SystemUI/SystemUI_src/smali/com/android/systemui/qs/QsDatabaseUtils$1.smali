.class Lcom/android/systemui/qs/QsDatabaseUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "QsDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;
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
    .line 523
    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 531
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 546
    .end local v1    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 534
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "com.oem.smartwifisupport"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->handleVoWifi()V
    invoke-static {v4}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$000(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    goto :goto_0

    .line 537
    :cond_2
    const-string v4, "kr.co.rightbrain.RetailMode.TR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->handleRetailMode()V
    invoke-static {v4}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$100(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    goto :goto_0

    .line 540
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "state":Ljava/lang/String;
    const-string v4, "LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIcon()V
    invoke-static {v4}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$200(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    goto :goto_0
.end method
