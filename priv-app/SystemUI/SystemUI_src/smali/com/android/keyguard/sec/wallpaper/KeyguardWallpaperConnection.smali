.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "KeyguardWallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final BIND_SERVICE_RETRY_DELAY:I

.field private final TAG:Ljava/lang/String;

.field private mBindServiceRetryHandler:Landroid/os/Handler;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsConnecting:Z

.field mIsVisible:Z

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mUnbindService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 41
    const-string v0, "KeyguardWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    .line 57
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->BIND_SERVICE_RETRY_DELAY:I

    .line 58
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 73
    iput v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mDisplayId:I

    .line 75
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 168
    :try_start_0
    const-string v1, "KeyguardWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach Engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    const-string v2, "KeyguardWallpaperConnection"

    const-string v3, "connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v0, "KeyguardWallpaperConnection"

    const-string v2, "bind service was called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 94
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 184
    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v9, 0x0

    .line 108
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const/4 v2, 0x0

    const/16 v3, 0x832

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    :cond_0
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "onServiceConnected completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iput-boolean v9, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    .line 136
    return-void

    .line 126
    :catch_0
    move-exception v8

    .line 127
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "KeyguardWallpaperConnection"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 139
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    if-nez v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 151
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V

    .line 153
    const-string v1, "KeyguardWallpaperConnection"

    const-string v2, "Engine is destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    iput-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 161
    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    .line 162
    iput-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 163
    iput-boolean v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    .line 164
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 187
    const-string v1, "KeyguardWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    if-ne p1, v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method
