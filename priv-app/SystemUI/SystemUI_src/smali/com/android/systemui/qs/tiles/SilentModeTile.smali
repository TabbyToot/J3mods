.class public Lcom/android/systemui/qs/tiles/SilentModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SilentModeTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeTile"

.field private static mDeviceSoundProfile:I

.field private static mDeviceSoundProfilePrevious:I

.field private static mDiagnosticLogs:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTextID:I

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    iput v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    .line 84
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus(Z)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 89
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 92
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    .line 95
    return-void

    .line 87
    :cond_0
    const-string v0, "STATUSBAR-SilentModeTile"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 49
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 49
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SilentModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/SilentModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v0, 0x7f0205a9

    const v4, 0x7f0205a5

    const v3, 0x7f0205a7

    const/4 v2, 0x1

    .line 230
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v1, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 235
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v1, :cond_1

    .line 236
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_0

    const v0, 0x7f020579

    :cond_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 237
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 239
    :cond_1
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 243
    :pswitch_3
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 244
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 247
    :pswitch_4
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v0, :pswitch_data_1

    .line 257
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 258
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 249
    :pswitch_5
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 250
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 253
    :pswitch_6
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 254
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private sendLogs(I)V
    .locals 5
    .param p1, "soundProfile"    # I

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "extraText":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 348
    const-string v1, "None"

    .line 350
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v4, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v3, "feature"

    const-string v4, "QS06"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v3, "extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void

    .line 339
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "i":Landroid/content/Intent;
    :pswitch_0
    const-string v1, "Mute"

    .line 340
    goto :goto_0

    .line 342
    :pswitch_1
    const-string v1, "Vibrate"

    .line 343
    goto :goto_0

    .line 345
    :pswitch_2
    const-string v1, "Sound"

    .line 346
    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showSecondaryMenu()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method private updateNextProfile()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 318
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v3, v2, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 328
    :goto_0
    return v0

    .line 321
    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v0, :cond_1

    move v0, v1

    .line 322
    goto :goto_0

    .line 323
    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v0, v1, :cond_2

    .line 324
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v2

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v1

    .line 328
    goto :goto_0
.end method

.method private updateStatus()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus(Z)I

    move-result v0

    return v0
.end method

.method private updateStatus(Z)I
    .locals 4
    .param p1, "update"    # Z

    .prologue
    const v3, 0x7f0a037b

    .line 266
    const/4 v0, -0x1

    .line 267
    .local v0, "status":I
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 270
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 271
    const/4 v0, 0x4

    .line 272
    const v1, 0x7f0a037c

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 286
    :goto_0
    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState(Ljava/lang/Object;)V

    .line 288
    :cond_0
    return v0

    .line 273
    :cond_1
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v1, :cond_2

    .line 274
    const/4 v0, 0x2

    .line 275
    const v1, 0x7f0a037d

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 277
    :cond_2
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 278
    const/4 v0, 0x1

    .line 279
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 281
    :cond_3
    const/4 v0, 0x1

    .line 282
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 124
    const-string v4, "STATUSBAR-SilentModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-array v1, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "false"

    aput-object v4, v1, v3

    .line 127
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 130
    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0512

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v2, 0x0

    .line 147
    .local v2, "soundProfile":I
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateNextProfile()I

    move-result v2

    .line 149
    const-string v3, "STATUSBAR-SilentModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SilentMode handleClick(), setRingerModeInternal("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 152
    sget-boolean v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    if-eqz v3, :cond_0

    .line 153
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->sendLogs(I)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 120
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 166
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 169
    if-nez v0, :cond_0

    .line 170
    const-string v2, "STATUSBAR-SilentModeTile"

    const-string v3, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleLongClick()V

    .line 159
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x7f0a0356

    const v3, 0x7f0a034b

    .line 180
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 182
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 183
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    .line 184
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 185
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 186
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 187
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 189
    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_1
    :pswitch_0
    return-void

    .line 180
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 191
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 196
    :pswitch_2
    const v1, 0x7f0a0358

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 201
    :pswitch_3
    const v1, 0x7f0a0357

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 206
    :pswitch_4
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 207
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 208
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    .line 220
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 210
    :pswitch_5
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 215
    :pswitch_6
    const v1, 0x7f0a0357

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
