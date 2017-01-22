.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field static final EXTRA_SHOW_ONCE:Ljava/lang/String; = "show_dialog_once"

.field static final INFO_TYPE_DISABLE_HOTSPOT:I = 0x1

.field static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field static final INFO_TYPE_DPM_WIFI:I = 0x2

.field static final INFO_TYPE_EAP_MESSAGE:I = 0x14

.field static final INFO_TYPE_EDM_HOTSPOT:I = 0xa

.field static final INFO_TYPE_UNABLE_TO_TURNON_IBSS:I = 0x6

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI:I = 0x5

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI_AT_AIRPLANE_MODE:I = 0x7

.field static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static final VendorNotificationStyle:Ljava/lang/String;

.field private static mShowOnceFlag:Z

.field private static mShownConnectedToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    .line 75
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 79
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    .line 81
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 82
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 85
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 479
    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 481
    return-void
.end method

.method private static isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 493
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 514
    :cond_1
    :goto_0
    return v0

    .line 498
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 500
    goto :goto_0

    .line 503
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    move v0, v1

    .line 505
    goto :goto_0

    .line 511
    :cond_4
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    move v0, v1

    .line 512
    goto :goto_0
.end method

.method private isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private readSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v3, 0x0

    .line 452
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v6, "WifiStatusReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download filename :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 456
    .local v0, "credInfo":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 458
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 464
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    const/4 v0, 0x0

    .line 468
    if-eqz v3, :cond_0

    .line 469
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v0

    .line 462
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 468
    if-eqz v4, :cond_2

    .line 469
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    .line 473
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 471
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 474
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 471
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 467
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 468
    :goto_3
    if-eqz v3, :cond_3

    .line 469
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 473
    :cond_3
    :goto_4
    throw v6

    .line 471
    :catch_3
    move-exception v1

    .line 472
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 467
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 463
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 485
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 487
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 489
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    sget-boolean v2, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver"

    const-string v3, "Call AP LIST dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "startDialogIntent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v2, "force_show_dialog"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const-string v2, "force_show_dialog"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 443
    .local v0, "show":Z
    const-string v2, "force_show_dialog"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    .end local v0    # "show":Z
    :cond_1
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 448
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "action":Ljava/lang/String;
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_0

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "action: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const-string v35, "com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 93
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_1

    const-string v35, "WifiStatusReceiver"

    const-string v36, "ACTION CAME : com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    const-string v35, "force_show_dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 97
    const-string v35, "force_show_dialog"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 98
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 416
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    const-string v35, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 104
    const-string v35, "info_type"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 106
    .local v23, "msgId":I
    sparse-switch v23, :sswitch_data_0

    goto :goto_0

    .line 108
    :sswitch_0
    const v35, 0x7f0a02aa

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :sswitch_1
    const v35, 0x7f0a02ab

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :sswitch_2
    const v35, 0x7f0a02ac

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 117
    :sswitch_3
    const v35, 0x7f0a02ad

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :sswitch_4
    const v35, 0x7f0a02ae

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    :sswitch_5
    const v35, 0x7f0a02af

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 127
    :sswitch_6
    const v35, 0x7f0a02b0

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 132
    :sswitch_7
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v35, :cond_6

    .line 133
    const-string v35, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 134
    .local v20, "message":Ljava/lang/String;
    const-string v35, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 135
    .local v27, "ssid":Ljava/lang/String;
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v20, :cond_2

    .line 138
    const-string v35, "General failure"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a02b2

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 143
    :cond_4
    :goto_1
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 140
    :cond_5
    const-string v35, "Not subscribed to the requested service"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    if-eqz v27, :cond_4

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a02b3

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v27, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 167
    .end local v20    # "message":Ljava/lang/String;
    .end local v27    # "ssid":Ljava/lang/String;
    :cond_6
    sget-object v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string v36, "AKA"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 168
    const-string v35, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 169
    .restart local v20    # "message":Ljava/lang/String;
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive, message of received: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez v20, :cond_2

    goto/16 :goto_0

    .line 208
    .end local v20    # "message":Ljava/lang/String;
    .end local v23    # "msgId":I
    :cond_7
    const-string v35, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 209
    const-string v35, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/NetworkInfo;

    .line 210
    .local v24, "networkInfo":Landroid/net/NetworkInfo;
    const/16 v16, 0x0

    .line 212
    .local v16, "mCheckSsid":I
    if-eqz v24, :cond_14

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_14

    .line 213
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 214
    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiManager;

    .line 215
    .local v33, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v35, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiInfo;

    .line 217
    .local v32, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v32, :cond_e

    .line 218
    const-string v19, "<unknown ssid>"

    .line 219
    .local v19, "mUnknownSsid":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const/16 v16, 0x1

    .line 222
    :cond_8
    :goto_2
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_9

    .line 223
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "getConnectionInfo.SSID : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "wifiInfo : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_9
    const-string v35, "CMCC"

    sget-object v36, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    const-string v36, "CMCC"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_a

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    const-string v36, "\"CMCC\""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 232
    :cond_a
    const-string v35, "WifiStatusReceiver"

    const-string v36, "CMCC are included at the name of AP "

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v3, "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    const-string v35, "com.android.settings"

    const-string v36, "com.android.settings.wifi.CMCCChargeWarningDialog"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/high16 v35, 0x14800000

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    const-string v35, "dialog_type"

    const-string v36, "cmcc_ap_enable_warning"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v35, "WifiStatusReceiver"

    const-string v36, "systemui cmcc_ap_enable_warning"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    :cond_b
    :goto_3
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v15

    .line 251
    .local v15, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getWifiConnectedMessageState()Z

    move-result v35

    if-nez v35, :cond_f

    .line 252
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_2

    const-string v35, "WifiStatusReceiver"

    const-string v36, "Knox Customization: suppressing Wifi connected toast"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v15    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    :cond_c
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    const/16 v16, 0x2

    goto/16 :goto_2

    .line 221
    :cond_d
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    const/16 v16, 0x3

    goto/16 :goto_2

    .line 227
    .end local v19    # "mUnknownSsid":Ljava/lang/String;
    :cond_e
    const-string v35, "WifiStatusReceiver"

    const-string v36, "wifiinfo is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .restart local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    .restart local v19    # "mUnknownSsid":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 241
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "can\'t start picker activity:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 256
    .end local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    .restart local v15    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    :cond_f
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 257
    .local v22, "msg1":Landroid/os/Message;
    const/16 v35, 0xdc

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 259
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v35

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v36

    invoke-static/range {v36 .. v36}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v35

    if-nez v35, :cond_2

    .line 262
    const-string v35, "ro.build.scafe.cream"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "white"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 263
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v35, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-direct {v9, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p1    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    move-object/from16 p1, v9

    .line 266
    .end local v9    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_10
    const-string v17, ""

    .line 267
    .local v17, "mMsg":Ljava/lang/String;
    const/16 v35, 0x1

    move/from16 v0, v16

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    .line 268
    const/16 v35, 0x3

    move/from16 v0, v16

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 271
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090041

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "#ff"

    const-string v37, "#"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "colorText":Ljava/lang/String;
    const-string v35, "#DEAD00"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a02bc

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v17, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 275
    .local v21, "msg":Ljava/lang/String;
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 269
    .end local v5    # "colorText":Ljava/lang/String;
    .end local v21    # "msg":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 278
    .restart local v5    # "colorText":Ljava/lang/String;
    :cond_12
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a02bc

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "<font color="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ">"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "</font>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 281
    .restart local v21    # "msg":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 282
    .local v29, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v35

    const v36, 0x102000b

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 283
    .local v30, "tv":Landroid/widget/TextView;
    const/16 v35, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 284
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 285
    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 286
    .end local v21    # "msg":Ljava/lang/String;
    .end local v29    # "toast":Landroid/widget/Toast;
    .end local v30    # "tv":Landroid/widget/TextView;
    :catch_1
    move-exception v11

    .line 287
    .local v11, "e":Ljava/util/UnknownFormatConversionException;
    const-string v35, "WifiStatusReceiver"

    invoke-virtual {v11}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    .end local v5    # "colorText":Ljava/lang/String;
    .end local v11    # "e":Ljava/util/UnknownFormatConversionException;
    :cond_13
    const-string v35, "WifiStatusReceiver"

    const-string v36, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v15    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v17    # "mMsg":Ljava/lang/String;
    .end local v19    # "mUnknownSsid":Ljava/lang/String;
    .end local v22    # "msg1":Landroid/os/Message;
    .end local v32    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_14
    if-eqz v24, :cond_2

    .line 295
    const-string v35, "VZW"

    sget-object v36, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 296
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    if-eqz v35, :cond_15

    .line 297
    const v35, 0x7f0a02be

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    .line 298
    .restart local v29    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v35

    const v36, 0x102000b

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 299
    .restart local v30    # "tv":Landroid/widget/TextView;
    const/16 v35, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 302
    .end local v29    # "toast":Landroid/widget/Toast;
    .end local v30    # "tv":Landroid/widget/TextView;
    :cond_15
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    goto/16 :goto_0

    .line 305
    .end local v16    # "mCheckSsid":I
    .end local v24    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_16
    const-string v35, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 307
    .local v10, "data":Landroid/os/Bundle;
    if-nez v10, :cond_17

    .line 308
    const-string v35, "WifiStatusReceiver"

    const-string v36, "there is no extras"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :cond_17
    const-string v35, "command"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "command":Ljava/lang/String;
    if-eqz v6, :cond_18

    .line 314
    const-string v35, " "

    const-string v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 316
    :cond_18
    const-string v35, "AT+WIFIVALUE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 317
    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiManager;

    .line 318
    .restart local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v34

    .line 319
    .local v34, "wifiState":I
    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_19

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    .line 320
    :cond_19
    new-instance v35, Landroid/content/Intent;

    const-string v36, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v36, "response"

    const-string v37, "ON"

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :cond_1a
    new-instance v35, Landroid/content/Intent;

    const-string v36, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v36, "response"

    const-string v37, "OFF"

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    .end local v6    # "command":Ljava/lang/String;
    .end local v10    # "data":Landroid/os/Bundle;
    .end local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v34    # "wifiState":I
    :cond_1b
    const-string v35, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_26

    .line 328
    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v35, :cond_2

    .line 329
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 330
    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiManager;

    .line 332
    .restart local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    .line 333
    .local v8, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v26

    .line 335
    .local v26, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_1c

    .line 336
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 341
    :cond_1c
    const/16 v28, 0x0

    .line 343
    .local v28, "ssid_count":I
    if-nez v8, :cond_1f

    .line 344
    const-string v35, "WifiStatusReceiver"

    const-string v36, "constructAccessPoints config is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1d
    :goto_5
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : mShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_25

    sget-boolean v35, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v35, :cond_25

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_cmcc_manual"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 367
    .local v31, "wifiConnectionType":I
    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "wifiConnectionType is"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v35, 0x2

    move/from16 v0, v31

    move/from16 v1, v35

    if-eq v0, v1, :cond_2

    if-eqz v28, :cond_1e

    if-eqz v31, :cond_2

    .line 369
    :cond_1e
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 346
    .end local v31    # "wifiConnectionType":I
    :cond_1f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_20
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 347
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_21

    .line 348
    const-string v35, "WifiStatusReceiver"

    const-string v36, "constructAccessPoints config is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 351
    :cond_21
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_24

    const-string v27, ""

    .line 352
    .restart local v27    # "ssid":Ljava/lang/String;
    :goto_7
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/wifi/ScanResult;

    .line 353
    .local v25, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 355
    .local v18, "mScanSSid":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_22

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 356
    add-int/lit8 v28, v28, 0x1

    .line 360
    .end local v18    # "mScanSSid":Ljava/lang/String;
    .end local v25    # "result":Landroid/net/wifi/ScanResult;
    :cond_23
    if-eqz v28, :cond_20

    goto/16 :goto_5

    .line 351
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v27    # "ssid":Ljava/lang/String;
    :cond_24
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_7

    .line 370
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_25
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_2

    if-nez v28, :cond_2

    .line 371
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    .end local v8    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v26    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v28    # "ssid_count":I
    .end local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_26
    const-string v35, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_28

    .line 375
    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiManager;

    .line 376
    .restart local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 377
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 378
    const-string v35, "WifiStatusReceiver"

    const-string v36, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 380
    const-string v35, "ATT"

    sget-object v36, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    .line 381
    const-string v35, "WifiStatusReceiver"

    const-string v36, "Factory Mode is ON. Disabled internet service check"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_watchdog_poor_network_test_enabled"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a02bf

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 386
    .local v12, "errMsg":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 391
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v33    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_28
    const-string v35, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 410
    :cond_29
    const-string v35, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    goto/16 :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
    .end sparse-switch
.end method
