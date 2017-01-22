.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;
.super Ljava/lang/Object;
.source "KeyguardWallpaperLiveViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperLiveViewController"


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "displayId"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 50
    iput p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mDisplayId:I

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->initConnection()V

    .line 53
    return-void
.end method

.method private initConnection()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 57
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-nez v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_package_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_class_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "className":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    new-instance v4, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mDisplayId:I

    invoke-direct {v4, v5, v1, v6}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    .line 73
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    .line 74
    .local v2, "isUltraPowerSavingMode":Z
    const-string v4, "KeyguardWallpaperLiveViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initConnection isUltraPowerSavingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-eqz v4, :cond_0

    .line 76
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->connect()Z

    .line 78
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-interface {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->disconnect()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    .line 88
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method
