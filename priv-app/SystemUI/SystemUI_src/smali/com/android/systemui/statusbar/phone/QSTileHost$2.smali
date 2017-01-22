.class Lcom/android/systemui/statusbar/phone/QSTileHost$2;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "NAME"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "exName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "STATE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "exState":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSTile;

    .line 455
    .local v6, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.systemui.qs.tiles."

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 456
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    .line 457
    .local v5, "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    iget v7, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 459
    .local v7, "value":I
    const-string v8, "STATUSBAR-QSTileHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SVOICE command click() NAME="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", exState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",tile.toString()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v8, :cond_5

    const-string v8, "AutoRotateTile"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 462
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 479
    .end local v1    # "exName":Ljava/lang/String;
    .end local v2    # "exState":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    .end local v6    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v7    # "value":I
    :cond_1
    return-void

    .restart local v1    # "exName":Ljava/lang/String;
    .restart local v2    # "exState":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    .restart local v6    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .restart local v7    # "value":I
    :cond_2
    move-object v8, v6

    .line 464
    check-cast v8, Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v4

    .line 465
    .local v4, "mAutoRotate":Z
    const-string v8, "ON"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const-string v8, "OFF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 467
    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->click()V

    goto/16 :goto_0

    .line 471
    .end local v4    # "mAutoRotate":Z
    :cond_5
    const-string v8, "ON"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    :cond_6
    const-string v8, "OFF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 473
    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->click()V

    goto/16 :goto_0
.end method
