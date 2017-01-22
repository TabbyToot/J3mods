.class public Lcom/android/systemui/qs/tiles/VoWiFiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final TW_TAG:Ljava/lang/String; = "VoWiFiTile"

.field private static final VOWIFI_APP:Ljava/lang/String; = "VoWiFi"

.field private static final VOWIFI_BUTTON_LOCATION:I = 0x5

.field private static final VOWIFI_PACKAGE:Ljava/lang/String; = "com.oem.smartwifisupport"

.field private static receiverContext:Landroid/content/Context;


# instance fields
.field private mIsProcessing:Z

.field private mIsWfcProvisioned:Z

.field private mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    .line 55
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->init()V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->enableWifi()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateVoWifiIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoWiFiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private static addVoWifiApp(Ljava/lang/String;)V
    .locals 10
    .param p0, "nameList"    # Ljava/lang/String;

    .prologue
    .line 294
    :try_start_0
    sget-object v8, Lcom/android/systemui/qs/tiles/VoWiFiTile;->receiverContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 295
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {v3, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "appList":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, "VoWiFi"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    .end local v1    # "appList":Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v1    # "appList":Ljava/lang/String;
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const-string v7, ""

    .line 298
    .local v7, "newAppList":Ljava/lang/String;
    const/4 v4, 0x0

    .line 299
    .local v4, "i":I
    const-string v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v0, v2, v5

    .line 300
    .local v0, "app":Ljava/lang/String;
    const/4 v8, 0x4

    if-ne v4, v8, :cond_2

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "VoWiFi;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 303
    :cond_2
    const-string v8, "VoWiFi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "app":Ljava/lang/String;
    :cond_4
    invoke-static {v3, p0, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v1    # "appList":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "newAppList":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 260
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 265
    :cond_0
    return-void
.end method

.method public static handleVoWifi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    sput-object p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->receiverContext:Landroid/content/Context;

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/tiles/VoWiFiTile$1;

    invoke-direct {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    const-string v0, "VoWiFiTile"

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVoWifiAppEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "isVoWifiEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 333
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 335
    :try_start_0
    const-string v3, "com.oem.smartwifisupport"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 336
    .local v0, "appState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    .line 341
    .end local v0    # "appState":I
    :cond_0
    :goto_0
    return v1

    .line 336
    .restart local v0    # "appState":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    .end local v0    # "appState":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 113
    .local v7, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 121
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private queryWfcState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v7, 0x0

    .line 130
    .local v7, "state":I
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 138
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    return v7
.end method

.method private static removeVoWifiApp(Ljava/lang/String;)V
    .locals 9
    .param p0, "nameList"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v7, Lcom/android/systemui/qs/tiles/VoWiFiTile;->receiverContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 316
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "oldAppList":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "VoWiFi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v5, ""

    .line 321
    .local v5, "newAppList":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 322
    .local v0, "app":Ljava/lang/String;
    const-string v7, "VoWiFi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 327
    .end local v0    # "app":Ljava/lang/String;
    :cond_3
    invoke-static {v2, p0, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static updateVoWifiIfNeeded()V
    .locals 3

    .prologue
    .line 281
    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/tiles/VoWiFiTile;->receiverContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "appState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 283
    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->removeVoWifiApp(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->addVoWifiApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 178
    .local v0, "state":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "VoWiFiTile"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_1
    return-void

    .end local v0    # "state":Z
    :cond_0
    move v0, v3

    .line 177
    goto :goto_0

    .line 182
    .restart local v0    # "state":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 183
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    if-nez v1, :cond_2

    .line 184
    new-instance v1, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "VoWiFiTile"

    const-string v2, "handleLongClick()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    const-string v1, "com.oem.smartwifi.WIFI_CALLING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "VoWiFiTile"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleLongClick()V

    .line 199
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 213
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 216
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 219
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_1

    .line 220
    const v1, 0x7f0205db

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 234
    :goto_1
    return-void

    .line 213
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 222
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 224
    :pswitch_0
    const v1, 0x7f0205b9

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 227
    :pswitch_1
    const v1, 0x7f0205b8

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 230
    :pswitch_2
    const v1, 0x7f0205b7

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 222
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
    .line 37
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public userSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 238
    return-void
.end method
