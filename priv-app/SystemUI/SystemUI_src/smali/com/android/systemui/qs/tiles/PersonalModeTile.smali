.class public Lcom/android/systemui/qs/tiles/PersonalModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PersonalModeTile.java"


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
.field private static final PERSONAL_MODE:Ljava/lang/String; = "personal_mode_enabled"

.field private static final TAG:Ljava/lang/String; = "PersonalModeTile"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 77
    new-instance v1, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v1, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "personal_mode_enabled"

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->init()V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 71
    .local v0, "state":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 75
    :goto_1
    return-void

    .line 70
    .end local v0    # "state":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    .restart local v0    # "state":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    if-eqz v0, :cond_2

    :goto_2
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PersonalModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f02058e

    .line 187
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 188
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const v0, 0x7f02058f

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 195
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f02058d

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 247
    .local v0, "state":Z
    :goto_0
    const-string v2, "PersonalModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonalMode  updateState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V

    .line 252
    :goto_1
    return-void

    .line 246
    .end local v0    # "state":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    .restart local v0    # "state":Z
    :cond_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x2

    .line 259
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    const-string v5, "PersonalModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 121
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0a047a

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.secretmode_service"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "levelPrivatemode":I
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0479

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v7

    .line 136
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 139
    if-nez v1, :cond_3

    .line 140
    const-string v4, "PersonalModeTile"

    const-string v5, "handleClick : Personal mode state change is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.personalpage.service"

    const-string v5, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v8, :cond_4

    .line 155
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 106
    return-void
.end method

.method public handleLongClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 216
    const-string v3, "PersonalModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "true"

    aput-object v2, v1, v5

    .line 219
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 222
    if-nez v0, :cond_1

    .line 223
    const-string v2, "PersonalModeTile"

    const-string v3, "handleLongClick : setting acesse is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0a047a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalpage.PersonalPageSettings"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->handleLongClick()V

    .line 212
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f0a034c

    const v3, 0x7f0a0373

    .line 162
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a039a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 167
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v1, :pswitch_data_0

    .line 184
    :goto_1
    return-void

    .line 162
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 169
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0a034b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 174
    :pswitch_1
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 179
    :pswitch_2
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public isAfwProfile(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    const-string v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 266
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    .line 267
    .local v3, "result":Z
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 268
    const-string v6, "user"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 269
    .local v5, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 271
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 272
    const/4 v3, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v3, 0x1

    .line 280
    :cond_2
    return v3
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
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
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 207
    return-void
.end method
