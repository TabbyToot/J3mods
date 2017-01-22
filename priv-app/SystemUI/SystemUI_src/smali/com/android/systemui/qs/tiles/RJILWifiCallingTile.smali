.class public Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RJILWifiCallingTile.java"


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
.field static final ACTION_WIFI_CALL_ENABLE_BROADCAST:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final TW_TAG:Ljava/lang/String; = "RJILWifiCallingTile"

.field static final WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field private static mrequestfromSystemUI:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mWifiCallingSettingChanged:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 44
    new-instance v1, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mWifiCallingSettingChanged:Landroid/database/ContentObserver;

    .line 81
    const-string v1, "RJILWifiCallingTile"

    const-string v2, "RJILWifiCallingTile "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->init()V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_call_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "state":I
    if-ne v0, v4, :cond_0

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_call_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mWifiCallingSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    return-void
.end method

.method private sendWfcSwitchValBroadCastToRil(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcenabled"    # I

    .prologue
    .line 68
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfcSwitchValToRil(): switch val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "wificall":Landroid/content/Intent;
    const-string v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 72
    const-string v1, "RJILWifiCallingTile"

    const-string v2, "sendWfcSwitchValToRil(): broadcast sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v1, "RJILWifiCallingTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi calling handleClick("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-boolean v3, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mrequestfromSystemUI:Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v3, :cond_1

    .line 119
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->sendWfcSwitchValBroadCastToRil(Landroid/content/Context;I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->sendWfcSwitchValBroadCastToRil(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 103
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 138
    const-string v1, "RJILWifiCallingTile"

    const-string v2, "Handle Long Click"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "RJILWifiCallingTile"

    const-string v2, "Cannot find Call Settings!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->handleLongClick()V

    .line 134
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 148
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState Called = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 151
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState Called 1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_1
    return-void

    .line 149
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 159
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState: WifiCalling to ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const v1, 0x7f0205dc

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 163
    :pswitch_1
    const-string v1, "RJILWifiCallingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState: WifiCalling to OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const v1, 0x7f0205db

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 167
    :pswitch_2
    const v1, 0x7f0205da

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 157
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
    .line 31
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RJILWifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public userSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 174
    return-void
.end method
