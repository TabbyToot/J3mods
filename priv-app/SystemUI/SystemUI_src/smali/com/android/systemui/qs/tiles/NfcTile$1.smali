.class Lcom/android/systemui/qs/tiles/NfcTile$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NfcTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    # setter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 343
    :cond_0
    const-string v2, "NfcTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    const-string v2, "NfcTile"

    const-string v3, "FeliCa Lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    .line 393
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v2, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    const-string v2, "NfcTile"

    const-string v3, "FeliCa UnLock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 354
    const-string v2, "NfcTile"

    const-string v3, "mIntentReceiver mNfcAdapter : null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I

    move-result v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V

    .line 358
    const-string v2, "NfcTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver nfcadapter state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_3
    const-string v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    const-string v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I

    move-result v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V

    goto :goto_0

    .line 367
    .end local v1    # "state":I
    :cond_4
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 369
    .restart local v1    # "state":I
    const-string v2, "NfcTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : ADAPTER_STATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v2, :cond_5

    .line 371
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I

    move-result v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$602(Lcom/android/systemui/qs/tiles/NfcTile;Z)Z

    goto/16 :goto_0

    .line 375
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I

    move-result v3

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V

    goto/16 :goto_0
.end method
