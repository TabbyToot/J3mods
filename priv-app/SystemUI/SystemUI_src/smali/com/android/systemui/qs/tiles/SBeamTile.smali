.class public Lcom/android/systemui/qs/tiles/SBeamTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SBeamTile.java"


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
.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final TAG:Ljava/lang/String; = "SBeamTile"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsProcessing:Z

.field private mSBeamState:Z

.field private final mSettingSB:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    .line 105
    new-instance v2, Lcom/android/systemui/qs/tiles/SBeamTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "sbeam_mode"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/SBeamTile$1;-><init>(Lcom/android/systemui/qs/tiles/SBeamTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "sbeam_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 127
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SBeamTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SBeamTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SBeamTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    return p1
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0205a0

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 86
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    const v0, 0x7f0205a1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 93
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 96
    :pswitch_2
    const v0, 0x7f02059f

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "turn_on"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 12

    .prologue
    .line 138
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    if-eqz v9, :cond_1

    .line 139
    const-string v9, "SBeamTile"

    const-string v10, "onClick(): Processing..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SBeam onClick("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "true"

    aput-object v10, v8, v9

    .line 146
    .local v8, "selectionArgsTrue":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v7, v9

    .line 148
    .local v7, "selectionArgsFalse":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isNFCEnabledWithMsg"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "isNFCEnabled":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isAndroidBeamAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "isAndroidBeamAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSBeamAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "isSamsungBeamAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiEnabled"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, "isWiFiEnabled":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiDirectAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 153
    .local v6, "isWifiDirectAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v11, "isNFCStateChangeAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "isNFCStateChangeAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 155
    .local v4, "isSettingsChangesAllowed":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    .line 156
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 157
    :cond_2
    const-string v9, "SBeamTile"

    const-string v10, "onClick(): SBeam state change is not allowed by EDM"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :cond_3
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 168
    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Turning ON SBeam mSBeamState:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",mState.value:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    .line 170
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0

    .line 171
    :cond_4
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 172
    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Turning OFF mSBeamState:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",mState.value:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    .line 174
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 133
    return-void
.end method

.method public handleLongClick()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 200
    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleLongClick : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-array v8, v14, [Ljava/lang/String;

    const-string v9, "true"

    aput-object v9, v8, v13

    .line 204
    .local v8, "selectionArgsTrue":[Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/String;

    const-string v9, "false"

    aput-object v9, v7, v13

    .line 206
    .local v7, "selectionArgsFalse":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isNFCEnabledWithMsg"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, "isNFCEnabled":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isAndroidBeamAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "isAndroidBeamAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSBeamAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "isSamsungBeamAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiEnabled"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, "isWiFiEnabled":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiDirectAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 211
    .local v6, "isWifiDirectAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v11, "isNFCStateChangeAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "isNFCStateChangeAllowed":I
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 213
    .local v4, "isSettingsChangesAllowed":I
    if-eq v4, v12, :cond_1

    if-eq v1, v12, :cond_1

    if-eq v0, v12, :cond_1

    if-eq v5, v12, :cond_1

    if-eq v6, v12, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v3, v12, :cond_1

    .line 214
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 215
    :cond_0
    const-string v9, "SBeamTile"

    const-string v10, "onLongClick(): setting access is not allowed by EDM"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$SBeamSettingsActivity"

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/tiles/SBeamTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleLongClick()V

    .line 196
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0a0374

    .line 59
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a039b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 64
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_1
    return-void

    .line 59
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 66
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0a034b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 71
    :pswitch_1
    const v1, 0x7f0a034c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 76
    :pswitch_2
    const v1, 0x7f0a034d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 64
    nop

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
    .line 42
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
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
    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 227
    return-void
.end method
