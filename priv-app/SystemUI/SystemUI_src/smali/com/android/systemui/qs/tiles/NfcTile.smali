.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADAPTER_BOOT_ACTION:Ljava/lang/String; = "android.nfc.action.ADAPTER_BOOT_COMPLETED"

.field private static final LOCKSTATUS_LOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_LOCK"

.field private static final LOCKSTATUS_UNLOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

.field private static final NFC_STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NfcTile"


# instance fields
.field private mClickFromOffPriorState:I

.field private mContentTextId:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsClickFromOff:Z

.field private mIsProcessing:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mTextID:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 62
    iput v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 336
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/NfcTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    return p1
.end method

.method private handleStateChanged(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x2

    .line 137
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChangedForKor(I)I

    move-result v0

    .line 161
    :goto_0
    :pswitch_0
    return v0

    .line 140
    :cond_0
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleStateChangedForKor(I)I
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x3

    const v5, 0x7f0a0388

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 180
    const-string v3, "nfc"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_0

    .line 181
    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    .line 233
    :goto_0
    return v0

    .line 187
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 230
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 231
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 232
    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    goto :goto_0

    .line 189
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 190
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 191
    const v0, 0x7f0a01d2

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    if-ne v3, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    if-ne v1, v0, :cond_1

    .line 196
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 197
    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 198
    const v0, 0x7f0a01d2

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 202
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 203
    const v0, 0x7f0a01d3

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    .line 204
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 209
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 210
    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    goto :goto_0

    .line 214
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    if-ne v0, v1, :cond_2

    .line 215
    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 220
    :goto_1
    const v0, 0x7f0a01d2

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    .line 221
    goto :goto_0

    .line 217
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 218
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    goto :goto_1

    .line 224
    :pswitch_4
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 225
    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 226
    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    .line 227
    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v2, 0x7f020587

    const v1, 0x7f020584

    .line 274
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateIconStateForKor(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 309
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 279
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_1

    .line 280
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 282
    :cond_1
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 285
    :cond_2
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_3

    .line 288
    const v0, 0x7f020585

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 290
    :cond_3
    const v0, 0x7f020588

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 294
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_4

    .line 295
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 297
    :cond_4
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 301
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_5

    .line 302
    const v0, 0x7f020583

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 304
    :cond_5
    const v0, 0x7f020586

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleUpdateIconStateForKor(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    .line 313
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 314
    const v0, 0x7f020582

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 334
    :goto_0
    return-void

    .line 316
    :cond_0
    const v0, 0x7f020581

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 319
    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    const v0, 0x7f0209c9

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 324
    :pswitch_1
    const v0, 0x7f0209ca

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 327
    :pswitch_2
    const v0, 0x7f0209cb

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 330
    :pswitch_3
    const v0, 0x7f020588

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshButtonState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 556
    packed-switch p1, :pswitch_data_0

    .line 563
    :goto_0
    :pswitch_0
    return-void

    .line 558
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 560
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 561
    :pswitch_4
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x2

    return v0
.end method

.method public handleClick()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x1

    const/4 v0, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 401
    const-string v3, "NfcTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v13, :cond_3

    .line 408
    const-string v0, "NfcTile"

    const-string v1, "!mUse3ToggleNFC && state DIM!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    .line 412
    const-string v0, "NfcTile"

    const-string v1, "(!SEC_PRODUCT_FEATURE_NFC_FAVER3_SUPPORT) mNfcAdapter is Null!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 420
    :cond_3
    new-array v10, v2, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v1, v10, v5

    .line 421
    .local v10, "selectionArgsFalse":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v11, v5

    .line 422
    .local v11, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v1, v3, v4, v10}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 424
    .local v8, "isSettingsChangesAllowed":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isNFCEnabledWithMsg"

    invoke-static {v1, v3, v4, v11}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 426
    .local v6, "isNFCEnabled":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v4, "isNFCStateChangeAllowed"

    invoke-static {v1, v3, v4, v10}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 428
    .local v7, "isNFCStateChangeAllowed":I
    if-eq v8, v12, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v7, v12, :cond_5

    .line 429
    if-eqz v8, :cond_4

    if-eqz v6, :cond_4

    if-nez v7, :cond_5

    .line 430
    :cond_4
    const-string v0, "NfcTile"

    const-string v1, "onClick(): state change is not allowed by EDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_9

    .line 436
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v1, v13, :cond_0

    .line 439
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    if-eqz v1, :cond_6

    .line 440
    const-string v0, "NfcTile"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    :cond_6
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_7

    .line 445
    const-string v0, "NfcTile"

    const-string v1, "NFC Service is not ready - onClick"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_8

    .line 450
    const-string v1, "NfcTile"

    const-string v3, "mNfcAdapter is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_8

    .line 452
    const-string v0, "NfcTile"

    const-string v1, "mNfcAdapter is still null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v9

    .line 458
    .local v9, "nfcState":I
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    .line 459
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 460
    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 462
    packed-switch v9, :pswitch_data_0

    .line 492
    :pswitch_0
    const-string v0, "NfcTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NFC state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    goto/16 :goto_0

    .line 464
    :pswitch_1
    const-string v1, "NfcTile"

    const-string v3, "Change to NFC STATE_CARD_MODE_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    .line 466
    iput v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    .line 467
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 468
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 469
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    .line 471
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling NFC"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :pswitch_2
    const-string v0, "NfcTile"

    const-string v1, "Change to NFC STATE_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 479
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto/16 :goto_0

    .line 482
    :pswitch_3
    const-string v1, "NfcTile"

    const-string v3, "Change to NFC STATE_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 484
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 486
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling NFC"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    .end local v9    # "nfcState":I
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a

    .line 498
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a

    .line 499
    const-string v0, "NfcTile"

    const-string v1, "(!mUse3ToggleNFC) mNfcAdapter is Null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_0

    .line 510
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method public handleLongClick()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 528
    const-string v7, "NfcTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLongClick : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-array v4, v11, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v4, v10

    .line 531
    .local v4, "selectionArgsFalse":[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "true"

    aput-object v6, v5, v10

    .line 532
    .local v5, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v6, v7, v8, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 534
    .local v2, "isSettingsChangesAllowed":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v8, "isNFCEnabledWithMsg"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 536
    .local v0, "isNFCEnabled":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v8, "isNFCStateChangeAllowed"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "isNFCStateChangeAllowed":I
    if-eq v2, v9, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v1, v9, :cond_1

    .line 539
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 540
    :cond_0
    const-string v6, "NfcTile"

    const-string v7, "handleLongClick(): setting acess  is not allowed by EDM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "operator":Ljava/lang/String;
    const-string v6, "SCT21"

    sget-object v7, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "KDDI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "DCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SBM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    :cond_2
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleLongClick()V

    .line 524
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f0a034b

    const/4 v4, 0x1

    const v3, 0x7f0a0361

    .line 239
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, "value":I
    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 241
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 242
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 243
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 249
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 250
    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_2
    return-void

    .line 239
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 246
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0388

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    .line 252
    :pswitch_0
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 257
    :pswitch_1
    const v1, 0x7f0a034c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 262
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 265
    :pswitch_3
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 266
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "NfcTile"

    const-string v1, "NFC Service is not ready - init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 98
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v6, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 101
    const v0, 0x7f0a0388

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    .line 123
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v6, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 6
    .param p1, "newUserId"    # I

    .prologue
    const/4 v4, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 573
    return-void
.end method
